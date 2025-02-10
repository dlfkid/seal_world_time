library seal_time;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'seal_time.g.dart';

abstract class SealTime implements Built<SealTime, SealTimeBuilder> {
  SealTime._();

  factory SealTime([void Function(SealTimeBuilder) updates]) = _$SealTime;

  @BuiltValueField(wireName: 'year')
  int get year;
  @BuiltValueField(wireName: 'month')
  int get month;
  @BuiltValueField(wireName: 'day')
  int get day;
  @BuiltValueField(wireName: 'hour')
  int get hour;
  @BuiltValueField(wireName: 'minute')
  int get minute;
  @BuiltValueField(wireName: 'seconds')
  int get seconds;
  @BuiltValueField(wireName: 'milliSeconds')
  int get milliSeconds;
  @BuiltValueField(wireName: 'dateTime')
  String get dateTime;
  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'time')
  String get time;
  @BuiltValueField(wireName: 'timeZone')
  String get timeZone;
  @BuiltValueField(wireName: 'dayOfWeek')
  String get dayOfWeek;
  @BuiltValueField(wireName: 'dstActive')
  bool get dstActive;

  static Serializer<SealTime> get serializer => _$sealTimeSerializer;
}
