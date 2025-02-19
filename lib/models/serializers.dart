import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'package:seal_world_time/models/seal_time.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  SealTime,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
