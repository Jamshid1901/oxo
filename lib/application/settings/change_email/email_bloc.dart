
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/settings/i_settings_facade.dart';
import 'package:oxo/infrastructure/models/settings/change_email/confirm_email.dart';
import 'package:oxo/infrastructure/models/settings/change_email/new_email.dart';

part 'email_event.dart';
part 'email_state.dart';

part 'email_bloc.freezed.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc({ required this.settingsFacade}) : super(_EmailState());


  final ISettingsFacade settingsFacade;


  @override
  Stream<EmailState> mapEventToState(EmailEvent event) async* {

   yield* event.map(sendNewEmail: (_SendNewEmail email) async*{
     yield state.copyWith(isLoading: true, exception: '',isEmailSend: false);


     bool validateEmailAddress(String? input) {
       const emailRegex =
       r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
       if(input != null){
         if (RegExp(emailRegex).hasMatch(input)) {
           return true;
         } else {
           return false;
         }
       }else {
         return false;
       }

     }
     if(validateEmailAddress(email.newEmail.newEmail)){
       final res = await settingsFacade.postNewEmailSettings(email.newEmail);
       yield* res.fold(
             (error) async* {
           yield state.copyWith(
             isLoading: false,
             isEmailSend: false,
             exception: error.message,
           );
         },
             (result) async* {
           yield state.copyWith(
             isLoading: false,
             isEmailSend: true,
             exception: '',
           );
         },
       );
     }
        else{
       yield state.copyWith(
         isLoading: false,
         isEmailSend: false,
         exception: 'invalid_credential'.tr(),
       );
     }


    },

       confirmEmail: (_ConfirmEmail value) async* {

     yield state.copyWith(isLoading: true, exception: '', isEmailSend: false);


     final res = await settingsFacade.confirmEmailSettings(value.confirmEmail);

     yield* res.fold(
           (error) async* {
         yield state.copyWith(
           isLoading: false,
           isConfirmed: false,
           isEmailSend: false,
           exception: error.message,
         );
       },
           (result) async* {
         yield state.copyWith(
           isLoading: false,
           isConfirmed: true,
           isEmailSend: false,
           exception: '',
         );
       },
     );
   }, resendEmail: (_resendEmail value)async* {
         yield state.copyWith(isLoading: true, exception: '', isEmailSend: false);

         final res = await settingsFacade.postNewEmailSettings(value.newEmail);
         yield* res.fold(
               (error) async* {
             yield state.copyWith(
               isLoading: false,
               isEmailSend: false,
               exception: error.message,
             );
           },
               (result) async* {
             yield state.copyWith(
               isLoading: false,
               isEmailSend: false,
               exception: '',
             );
           },
         );
       });
  }
}
