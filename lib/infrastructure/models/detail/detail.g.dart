// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Detail> _$detailSerializer = new _$DetailSerializer();

class _$DetailSerializer implements StructuredSerializer<Detail> {
  @override
  final Iterable<Type> types = const [Detail, _$Detail];
  @override
  final String wireName = 'Detail';

  @override
  Iterable<Object?> serialize(Serializers serializers, Detail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.detail;
    if (value != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Detail deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Detail extends Detail {
  @override
  final String? detail;

  factory _$Detail([void Function(DetailBuilder)? updates]) =>
      (new DetailBuilder()..update(updates)).build();

  _$Detail._({this.detail}) : super._();

  @override
  Detail rebuild(void Function(DetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailBuilder toBuilder() => new DetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Detail && detail == other.detail;
  }

  @override
  int get hashCode {
    return $jf($jc(0, detail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Detail')..add('detail', detail))
        .toString();
  }
}

class DetailBuilder implements Builder<Detail, DetailBuilder> {
  _$Detail? _$v;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  DetailBuilder();

  DetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detail = $v.detail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Detail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Detail;
  }

  @override
  void update(void Function(DetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Detail build() {
    final _$result = _$v ?? new _$Detail._(detail: detail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
