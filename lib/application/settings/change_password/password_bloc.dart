import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:oxo/domain/settings/i_settings_facade.dart';
import 'package:oxo/infrastructure/models/settings/password.dart';

part 'password_event.dart';
part 'password_state.dart';
part 'password_bloc.freezed.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc({ required this.settingsFacade}) : super( _PasswordState());

  final ISettingsFacade settingsFacade;


  @override
  Stream<PasswordState> mapEventToState(PasswordEvent event) async* {
    yield* event.map(
      changePassword: (_ChangePassword value) async*{
        yield state.copyWith(isLoading: true, exception: '');

        if(event.passwordEntity.oldPassword!.length < 8) {
          yield state.copyWith(
            isLoading: false,
            update: false,
            exception: 'old password length not valid',
          );
        } else if(event.passwordEntity.newPassword!.length < 8) {
          yield state.copyWith(
            isLoading: false,
            update: false,
            exception: 'new password length not valid',
          );
        } else if(event.passwordEntity.newPassword! != event.confirmedEmail  ) {
          yield state.copyWith(
            isLoading: false,
            update: false,
            exception: 'doesnt match',
          );
        }
        else {
          final res = await settingsFacade.postChangePasswordSettings(
              event.passwordEntity);

          yield* res.fold(
                (error) async* {
              yield state.copyWith(
                isLoading: false,
                update: false,
                exception: error.message,
              );
            },
                (result) async* {
              yield state.copyWith(
                isLoading: false,
                update: true,
              );
            },
          );
        }
      },
    );
  }
}
