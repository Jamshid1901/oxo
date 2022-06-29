import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/image_upload_model/image_upload_model.dart';
import 'package:oxo/infrastructure/repositories/edit_profile_repo.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/infrastructure/shared_variables.dart';


part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc(this._imageUploadRepo, this._editProfileRepository) : super(const _EditProfileState()) ;

  final ImageUploadRepo _imageUploadRepo;
  final EditProfileRepository _editProfileRepository;

  @override
  Stream<EditProfileState> mapEventToState(EditProfileEvent event) async* {
    yield* event.map(
      uploadAvatarPhoto: _uploadAvatarPhoto,
      uploadBackgroundPhoto: _uploadBackgroundPhoto,
      editProfilePut: _putEditProfile,
      checkUserName: _checkUserName,

    );
  }



  Stream<EditProfileState> _uploadAvatarPhoto(_UploadAvatarPhoto value) async* {

    yield state.copyWith(
      isLoadingAvatar: true,
      exception: '',
    );

    final ImagePicker _picker = ImagePicker();

      try{
        final XFile? image = await _picker.pickImage(source: ImageSource.gallery);


        if(image != null){

          File? croppedFile = await ImageCropper().cropImage(
              sourcePath: image.path,
             aspectRatio:  const CropAspectRatio(ratioX: 1, ratioY: 1),

              androidUiSettings: const AndroidUiSettings(
                  toolbarTitle: 'Cropper',
                  toolbarColor: Colors.deepOrange,
                  toolbarWidgetColor: Colors.white,
                  initAspectRatio: CropAspectRatioPreset.original,
                  lockAspectRatio: false),
              iosUiSettings: const IOSUiSettings(
                minimumAspectRatio: 1.0,
              )
          );

          if(croppedFile != null){
            final res = await _imageUploadRepo.imageUpload(croppedFile.path);

            // yield* res.fold(
            //         (error) async*{
            //           ConstVariables.avatarId = -1;
            //       yield state.copyWith(
            //         isLoadingAvatar: false,
            //         exception: error.message,
            //         imageAvatarId: null,
            //       );
            //     },
            //         (result) async*{
            //           ConstVariables.avatarId = result.id!;
            //       yield state.copyWith(
            //         isLoadingAvatar: false,
            //         exception: '',
            //         imageAvatarUploadModel: result,
            //         imageAvatarId: result.id,
            //       );
            //     }
            // );
          }else{
            yield state.copyWith(
              isLoadingAvatar: false,
            );
          }


        }else{
          yield state.copyWith(
            isLoadingAvatar: false,
          );
        }


      }on PlatformException catch (e){
        print('FAILED TO LOAD image $e');
        yield state.copyWith(
          isLoadingAvatar: false,
          exception: e.message,
          imageAvatarId: null,
        );
      }

  }

  Stream<EditProfileState> _uploadBackgroundPhoto(_UploadBackgroundPhoto value) async* {

    yield state.copyWith(
      isLoadingBackground: true,
      exception: '',
    );

    final ImagePicker _picker = ImagePicker();

      try{
        final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

        if(image != null){

          File? croppedFile = await ImageCropper().cropImage(
              sourcePath: image.path,
              aspectRatio:  const CropAspectRatio(ratioX: 2, ratioY: 1),
              androidUiSettings: const AndroidUiSettings(
                  toolbarTitle: 'Cropper',
                  toolbarColor: Colors.deepOrange,
                  toolbarWidgetColor: Colors.white,
                  initAspectRatio: CropAspectRatioPreset.original,
                  lockAspectRatio: false),
              iosUiSettings: const IOSUiSettings(
                minimumAspectRatio: 1.0,
              )
          );

          if(croppedFile != null){
            final res = await _imageUploadRepo.imageUpload(croppedFile.path);

            // yield* res.fold(
            //         (error) async*{
            //           ConstVariables.backgroundId = -1;
            //       yield state.copyWith(
            //         isLoadingBackground: false,
            //         exception: error.message,
            //         imageBackgroundId: null,
            //       );
            //     },
            //         (result) async*{
            //           ConstVariables.backgroundId = result.id!;
            //       yield state.copyWith(
            //         exception: '',
            //         imageBackgroundUploadModel: result,
            //         isLoadingBackground: false,
            //         imageBackgroundId: result.id!,
            //       );
            //     }
            // );
          }else{
            yield state.copyWith(
              isLoadingBackground: false,
            );
          }


        }else{
          yield state.copyWith(
            isLoadingBackground: false,
          );
        }



      }on PlatformException catch (e){
        print('FAILED TO LOAD image $e');
        yield state.copyWith(
          isLoadingBackground: false,
          exception: e.message,
          imageBackgroundId: null,

        );
      }


  }

  Stream<EditProfileState> _putEditProfile(_EditProfilePut value) async* {

    yield state.copyWith(
      isLoading: true,
      exception: '',
      isSuccess: false,
    );

    final res = await _editProfileRepository.putEventEdit(value.editPModel);

    yield* res.fold(
            (error) async*{
          yield state.copyWith(
            isLoading: false,
            exception: error.message,
            isSuccess: false,
          );
        },
            (result) async*{

          yield state.copyWith(
            exception: '',
            isLoading: false,
            isSuccess: true,

          );
        }
    );


  }

  Stream<EditProfileState> _checkUserName(_CheckUserName value) async* {

    yield state.copyWith(
      exception: '',
      isSuccess: false,

    );

    final res = await _editProfileRepository.checkUserName(value.userName);

    yield* res.fold(
            (error) async*{
              yield state.copyWith(
            exception: error.message,
                isUserNameFree : false,

              );
        },
            (result) async*{

          yield state.copyWith(
            exception: '',
            isUserNameFree : true,

          );
        }
    );


  }
}
