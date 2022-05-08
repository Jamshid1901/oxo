import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detail.g.dart';

abstract class Detail implements Built<Detail, DetailBuilder> {


  String? get detail;


  Detail._();
  factory Detail([Function(DetailBuilder b) updates]) = _$Detail;

  static Serializer<Detail> get serializer => _$detailSerializer;
}