import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_image_upload.freezed.dart';

@freezed
abstract class ImageUploadFailure with _$ImageUploadFailure {
  const factory ImageUploadFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory ImageUploadFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory ImageUploadFailure.unknown({
    required String message,
  }) = Unknown;
}
