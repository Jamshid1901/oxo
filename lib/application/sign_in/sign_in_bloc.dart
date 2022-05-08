import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxo/domain/common/add_ot_remove.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/domain/sign_in/social_sign_in_types.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/infrastructure/repositories/auth_repo.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository _repository;
  SignInBloc(this._repository) : super(const _SignInState());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      login: _login,
      signUp: _signUp,
      forgotPassword: _forgotPassword,
      verifyCode: _verifyCode,
      resend: _resend,
      newPassword: _newPassword,
      addToGame: _addToGame,
      getGameList: _getGameList,
      addFavouriteGames: _addFavouriteGames,
    );
  }

  Stream<SignInState> _signUp(_SignUp value) async* {
    yield state.copyWith(
      exception: '',
      proceedToVerifyCode: false,
    );

    yield* _verifySignIn(
      value,
      (signUp) async* {
        yield state.copyWith(isLoading: true);
        final res = await _repository.signUp(signUp.login);

        yield* res.fold(
          () async* {
            yield state.copyWith(
              isLoading: false,
              proceedToVerifyCode: true,
            );
          },
          (error) async* {
            yield state.copyWith(
              isLoading: false,
              isEmailExists: error.message.contains('email'),
              isUsernameExists: error.message.contains('username'),
            );
          },
        );
      },
    );
  }

  Stream<SignInState> _login(_Login value) async* {
    yield state.copyWith(exception: '');
    yield* _verifySignIn(
      value,
      (login) async* {
        yield state.copyWith(isLoading: true);
        final res = await _repository.login(login.login);

        yield* res.fold(
          () async* {
            yield state.copyWith(
              isLoading: false,
              navigateToHome: true,
            );
          },
          (f) async* {
            yield state.copyWith(
              isLoading: false,
              exception: f.message,
            );
          },
        );
      },
    );
  }

  Stream<SignInState> _addFavouriteGames(_AddFavouriteGames value) async* {
    yield state.copyWith(
      isLoading: true,
      exception: '',
      navigateToHome: false,
    );

    final res = await _repository.favouriteGames(value.games);

    yield* res.fold(
      () async* {
        yield state.copyWith(
          isLoading: false,
          navigateToHome: true,
        );
      },
      (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
    );
  }

  Stream<SignInState> _getGameList(_GetGameList value) async* {
    yield state.copyWith(isLoading: true, exception: '');
    final res = await _repository.getGameList();

    yield* res.fold(
      (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
      (games) async* {
        final allGames = games.games!.toList();
        yield state.copyWith(
          isLoading: false,
          allGames: allGames,
        );
      },
    );
  }

  Stream<SignInState> _addToGame(_AddToGame value) async* {
    final newGames = <int>[...state.gameList];

    if (value.action == AddOrRemove.add) {
      newGames.add(value.id);
    } else {
      newGames.removeWhere((element) => element == value.id);
    }

    yield state.copyWith(gameList: newGames);
  }

  Stream<SignInState> _newPassword(_NewPassword value) async* {
    yield state.copyWith(
      exception: '',
      isLoading: true,
      navigateToHome: false,
    );

    final res = await _repository.newPassword(value.newPassword);

    yield* res.fold(
      () async* {
        yield state.copyWith(
          isLoading: false,
          navigateToHome: true,
        );
      },
      (a) async* {
        yield state.copyWith(
          isLoading: false,
          exception: a.message,
        );
      },
    );
  }

  Stream<SignInState> _verifyCode(_VerifyCode value) async* {
    yield state.copyWith(
      exception: '',
      isLoading: true,
      proceedToChangePassword: false,
      proceedToChooseInterests: false,
    );
    final res = await _repository.verifyCode(value.code, value.type);

    yield* res.fold(
      () async* {
        yield state.copyWith(
          isLoading: false,
          proceedToChangePassword: value.type == ResendCodeType.forgotPassword,
          proceedToChooseInterests: value.type == ResendCodeType.registering,
        );
      },
      (a) async* {
        yield state.copyWith(
          isLoading: false,
          exception: a.message,
        );
      },
    );
  }

  Stream<SignInState> _forgotPassword(_ForgotPassword value) async* {
    yield state.copyWith(
      exception: '',
      isLoading: true,
      proceedToGetPassword: false,
    );

    yield* _verifyEmail(value.email.email);
    if (!state.isEmailValid) {
      return;
    }
    final res = await _repository.forgotPassword(value.email);

    yield* res.fold(
      () async* {
        yield state.copyWith(
          isLoading: false,
          proceedToGetPassword: true,
        );
      },
      (a) async* {
        yield state.copyWith(
          isLoading: false,
          exception: a.message,
        );
      },
    );
  }

  Stream<SignInState> _resend(_Resend value) async* {
    yield state.copyWith(
      exception: '',
      isLoading: true,
    );

    yield* _verifyEmail(value.email.email);
    if (!state.isEmailValid) {
      return;
    }
    final res = await _repository.forgotPassword(value.email);

    yield* res.fold(
      () async* {
        yield state.copyWith(
          isLoading: false,
        );
      },
      (a) async* {
        yield state.copyWith(
          isLoading: false,
          exception: a.message,
        );
      },
    );
  }






  Stream<SignInState> _socialLogin(String token, String socialType) async* {
    yield state.copyWith(
      isLoading: true,
      exception: '',
      navigateToHome: false,
      proceedToChooseInterests: false,
    );
    final body = SocialSignIn(
      (s) => s
        ..accessToken = token
        ..socialNetwork = socialType,
    );

    final res = await _repository.socialSignIn(body);

    yield* res.fold(
      (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
      (data) async* {
        if (data.isRegistered ?? true) {
          yield state.copyWith(
            isLoading: false,
            proceedToChooseInterests: true,
          );
        } else {
          yield state.copyWith(
            isLoading: false,
            navigateToHome: true,
          );
        }
      },
    );
  }

  Stream<SignInState> _verifySignIn(
    dynamic login,
    Stream<SignInState> Function(dynamic) hundle,
  ) async* {
    if (login.login.email == null || login.login.email!.isEmpty) {
      yield state.copyWith(isEmailValid: false);
      return;
    }
    if (login.login.password == null || login.login.password!.isEmpty) {
      yield state.copyWith(isPasswordValid: false);
      return;
    }

    yield* _verifyEmail(login.login.email);
    yield* _verifyPassword(login.login.password);

    if (state.isEmailValid && state.isPasswordValid) {
      yield* hundle(login);
    }
  }

  Stream<SignInState> _verifyEmail(String? email) async* {
    final v = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!v.hasMatch(email!)) {
      yield state.copyWith(isEmailValid: false);
      return;
    } else {
      yield state.copyWith(isEmailValid: true);
    }
    return;
  }

  Stream<SignInState> _verifyPassword(String? password) async* {
    if (password!.length < 8) {
      yield state.copyWith(isPasswordValid: false);
    } else {
      yield state.copyWith(isPasswordValid: true);
    }
    return;
  }
}

