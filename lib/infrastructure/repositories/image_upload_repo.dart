import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/domain/image_upload_domain/failures_image_upload.dart';
import 'package:oxo/domain/image_upload_domain/image_upload_facade.dart';
import 'package:oxo/infrastructure/models/image_upload_model/image_upload_model.dart';
import 'package:oxo/infrastructure/services/prefs.dart';

import '../exceptions.dart';
import '../grid_apis.dart';

class ImageUploadRepo implements ImageUploadFacade {
  final ImageUploadService _imageUploadService;

  ImageUploadRepo(this._imageUploadService);

  Future<Either<ImageUploadFailure, List<ImageUploadModel>>> imagesUpload(List<String> files) async {

    List<ImageUploadModel> _imageIds=[];
    for (var file in files) {
      final res = await imageUpload(file,);
      if(res.isLeft()){
        break;
      }
      res.fold((l) => left(const Unknown(message: 'image_not_upload')) , (r) => _imageIds.add(r));
    }


    if(files.length==_imageIds.length && _imageIds.isNotEmpty) {
      return right(_imageIds);
    }else{
      return left(const Unknown(message: 'image_not_upload'));
    }
  }

  Future<Either<ImageUploadFailure, ImageUploadModel>> imageUpload(String file,) async {
    var token = await PreferenceService.create.then((value) => value.token);

    try {
      final res = await _imageUploadService.imageUpload(token.toToken, file);

      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {

        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {

      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      }  else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      }else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
