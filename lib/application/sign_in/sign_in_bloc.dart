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
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository _repository;
  final ImageUploadRepo _imageUploadRepo;
  SignInBloc(this._repository, this._imageUploadRepo) : super(const _SignInState());

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
      sendCode: _sendCoed,
      uploadProfile: _upload,
    );
  }

  Stream<SignInState> _upload(_UploadProfile value) async* {
    yield state.copyWith(
      exception: '',
      isLoading: true,
    );
    final res = await _imageUploadRepo.imageUpload(value.path);

    yield* res.fold(
          (e) async* {
        yield state.copyWith(
          exception: e.message,
          isLoading: false,
        );
      },
          (r) async* {
        yield state.copyWith(
          isLoading: false,
          mediaId: r.mediaId
        );
      },
    );
  }

  Stream<SignInState> _signUp(_SignUp value) async* {
    yield state.copyWith(
      exception: '',
        isLoading: true,
      navigateToHome: false,
    );
    final res = await _repository.signUp(value.login);

    yield* res.fold(
          () async* {
        yield state.copyWith(
          navigateToHome: true,
          isLoading: false,
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
  }

  Stream<SignInState> _login(_Login value) async* {
    yield state.copyWith(exception: '',isLoading: true,proceedToChooseInterests: false,);
    final res = await _repository.login(value.login);

    yield* res.fold(
          () async* {
        yield state.copyWith(
          isLoading: false,
          proceedToChooseInterests: true,
        );
      },
          (f) async* {
        yield state.copyWith(
          isLoading: false,
          exception: f.message,
        );
      },
    );
  }

  Stream<SignInState> _sendCoed(_SendCode value) async* {
    yield state.copyWith(exception: '',isLoading: true, proceedToVerifyCode: false,);
    final res = await _repository.sendCode(value.number);

    yield* res.fold(
          () async* {
        yield state.copyWith(
          isLoading: false,
          proceedToVerifyCode: true,
        );
      },
          (f) async* {
        yield state.copyWith(
          isLoading: false,
          exception: f.message,
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




}

