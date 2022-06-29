// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageUploadModel> _$imageUploadModelSerializer =
    new _$ImageUploadModelSerializer();

class _$ImageUploadModelSerializer
    implements StructuredSerializer<ImageUploadModel> {
  @override
  final Iterable<Type> types = const [ImageUploadModel, _$ImageUploadModel];
  @override
  final String wireName = 'ImageUploadModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageUploadModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'media_id',
      serializers.serialize(object.mediaId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ImageUploadModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageUploadModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'media_id':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageUploadModel extends ImageUploadModel {
  @override
  final String mediaId;

  factory _$ImageUploadModel(
          [void Function(ImageUploadModelBuilder)? updates]) =>
      (new ImageUploadModelBuilder()..update(updates)).build();

  _$ImageUploadModel._({required this.mediaId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mediaId, 'ImageUploadModel', 'mediaId');
  }

  @override
  ImageUploadModel rebuild(void Function(ImageUploadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageUploadModelBuilder toBuilder() =>
      new ImageUploadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageUploadModel && mediaId == other.mediaId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mediaId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageUploadModel')
          ..add('mediaId', mediaId))
        .toString();
  }
}

class ImageUploadModelBuilder
    implements Builder<ImageUploadModel, ImageUploadModelBuilder> {
  _$ImageUploadModel? _$v;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  ImageUploadModelBuilder();

  ImageUploadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageUploadModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageUploadModel;
  }

  @override
  void update(void Function(ImageUploadModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageUploadModel build() {
    final _$result = _$v ??
        new _$ImageUploadModel._(
            mediaId: BuiltValueNullFieldError.checkNotNull(
                mediaId, 'ImageUploadModel', 'mediaId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
