import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_upload_model.g.dart';

abstract class ImageUploadModel implements Built<ImageUploadModel, ImageUploadModelBuilder> {
  @BuiltValueField(wireName: 'media_id')
  String get mediaId;

  ImageUploadModel._();
  factory ImageUploadModel([Function(ImageUploadModelBuilder b) updates]) = _$ImageUploadModel;

  static Serializer<ImageUploadModel> get serializer => _$imageUploadModelSerializer;
}