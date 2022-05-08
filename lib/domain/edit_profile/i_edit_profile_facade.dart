

import'package:dartz/dartz.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/infrastructure/models/detail/detail.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';


abstract class IEditProfileFacade{

  Future<Either<ResponseFailure, String>> putEventEdit(ProfileM editPModel);

  Future<Either<ResponseFailure, Detail>> checkUserName(UserNameM userName);


}