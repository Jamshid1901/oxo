
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:oxo/infrastructure/models/settings/put_general_info.dart';
import 'package:oxo/infrastructure/repositories/settings_repo.dart';
import 'package:oxo/infrastructure/services/date_time_converter.dart';
part 'general_event.dart';
part 'general_state.dart';
part 'general_bloc.freezed.dart';


class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
   SettingsBloc(this._repository) : super(  _SettingsState());

   final SettingsRepository _repository;

   @override
   Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
     yield* event.map(
         getGeneralSettings: (_GetGeneralSettings value) async*{
           yield state.copyWith(isLoading: true,);

           final res = await _repository.getGeneralSettings();

           yield* res.fold(
                 (error) async* {
               yield state.copyWith(
                 isLoading: false,
                 exception: error.message,
               );
             },
                 (general) async* {
                   String date = '01/01/2022';
                 if(general.dob != null){
                    date = Converter.convertFormat(date: general.dob!);
                 }

                   yield state.copyWith(
                 isLoading: false,
                 gender: general.gender,
                 email: general.email,
                 dob: date
               );
             },
           );

         }, putGeneralInfoSettings: (_PutGeneralInfoSettings value) async* {
       yield state.copyWith(isLoading: true, exception: '',isUpdated: false);

       final res = await _repository.putGeneralInfoSettings(value.generalInfoEntity);

       yield* res.fold(
             (error) async* {
           yield state.copyWith(
             isLoading: false,
             exception: error.message,
             isUpdated: false,
           );
         },
             (detail) async* {
           yield state.copyWith(
               isLoading: false,
               isUpdated: true,
               exception: ''
           );
         },
       );

     }, getPrivacyPolicy: (_GetPrivacyPolicy value) async* {
       yield state.copyWith(isLoading: true,);

       final res = await _repository.getPrivacyPolicySettings();

       yield* res.fold(
             (error) async* {
           yield state.copyWith(
             isLoading: false,
             exception: error.message,
           );
         },
             (result) async* {

           yield state.copyWith(
               isLoading: false,
               privacyPolicy: result
           );
         },
       );

     },
     );
   }
}
