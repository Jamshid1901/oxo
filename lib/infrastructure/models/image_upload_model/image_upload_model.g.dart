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
      'file',
      serializers.serialize(object.file, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageUploadModel extends ImageUploadModel {
  @override
  final int? id;
  @override
  final String file;

  factory _$ImageUploadModel(
          [void Function(ImageUploadModelBuilder)? updates]) =>
      (new ImageUploadModelBuilder()..update(updates)).build();

  _$ImageUploadModel._({this.id, required this.file}) : super._() {
    BuiltValueNullFieldError.checkNotNull(file, 'ImageUploadModel', 'file');
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
    return other is ImageUploadModel && id == other.id && file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageUploadModel')
          ..add('id', id)
          ..add('file', file))
        .toString();
  }
}

class ImageUploadModelBuilder
    implements Builder<ImageUploadModel, ImageUploadModelBuilder> {
  _$ImageUploadModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  ImageUploadModelBuilder();

  ImageUploadModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _file = $v.file;
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
            id: id,
            file: BuiltValueNullFieldError.checkNotNull(
                file, 'ImageUploadModel', 'file'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
