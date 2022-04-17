
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:oxo/infrasturture/repositories/models/auth.dart';

part 'serializer.g.dart';

@SerializersFor([
  Auth,
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

