

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

Future<String>  uploadImage(double ratioX, double ratioY) async {
  final ImagePicker _picker = ImagePicker();

  try {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if(image != null){

      File? croppedFile = await ImageCropper().cropImage(
          sourcePath: image.path,
          aspectRatio:  CropAspectRatio(ratioX: ratioX, ratioY: ratioY),

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
       return croppedFile.path;

      }else{
        return '';
      }


    }else{
      return '';
    }
  }catch(e){
    return '';
  }

}