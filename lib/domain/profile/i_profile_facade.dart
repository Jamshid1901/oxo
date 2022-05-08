

import 'package:dartz/dartz.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';

abstract class IProfileFacade{
  Future<Either<ResponseFailure, ProfileModel>> getProfileModel();


  Future<Either<ResponseFailure, ProfileModel>> getUserProfileModel(int id);

  Future<Either<ResponseFailure, String>> deleteProfilePhoto(ProfileM profileM);

  Future<Either<ResponseFailure, String>> uploadProfilePhoto(ProfileM profileM);

}