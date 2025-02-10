// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seal_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SealTime> _$sealTimeSerializer = new _$SealTimeSerializer();

class _$SealTimeSerializer implements StructuredSerializer<SealTime> {
  @override
  final Iterable<Type> types = const [SealTime, _$SealTime];
  @override
  final String wireName = 'SealTime';

  @override
  Iterable<Object?> serialize(Serializers serializers, SealTime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'month',
      serializers.serialize(object.month, specifiedType: const FullType(int)),
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(int)),
      'hour',
      serializers.serialize(object.hour, specifiedType: const FullType(int)),
      'minute',
      serializers.serialize(object.minute, specifiedType: const FullType(int)),
      'seconds',
      serializers.serialize(object.seconds, specifiedType: const FullType(int)),
      'milliSeconds',
      serializers.serialize(object.milliSeconds,
          specifiedType: const FullType(int)),
      'dateTime',
      serializers.serialize(object.dateTime,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'timeZone',
      serializers.serialize(object.timeZone,
          specifiedType: const FullType(String)),
      'dayOfWeek',
      serializers.serialize(object.dayOfWeek,
          specifiedType: const FullType(String)),
      'dstActive',
      serializers.serialize(object.dstActive,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  SealTime deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SealTimeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hour':
          result.hour = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'minute':
          result.minute = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'seconds':
          result.seconds = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'milliSeconds':
          result.milliSeconds = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'timeZone':
          result.timeZone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dayOfWeek':
          result.dayOfWeek = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dstActive':
          result.dstActive = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$SealTime extends SealTime {
  @override
  final int year;
  @override
  final int month;
  @override
  final int day;
  @override
  final int hour;
  @override
  final int minute;
  @override
  final int seconds;
  @override
  final int milliSeconds;
  @override
  final String dateTime;
  @override
  final String date;
  @override
  final String time;
  @override
  final String timeZone;
  @override
  final String dayOfWeek;
  @override
  final bool dstActive;

  factory _$SealTime([void Function(SealTimeBuilder)? updates]) =>
      (new SealTimeBuilder()..update(updates))._build();

  _$SealTime._(
      {required this.year,
      required this.month,
      required this.day,
      required this.hour,
      required this.minute,
      required this.seconds,
      required this.milliSeconds,
      required this.dateTime,
      required this.date,
      required this.time,
      required this.timeZone,
      required this.dayOfWeek,
      required this.dstActive})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(year, r'SealTime', 'year');
    BuiltValueNullFieldError.checkNotNull(month, r'SealTime', 'month');
    BuiltValueNullFieldError.checkNotNull(day, r'SealTime', 'day');
    BuiltValueNullFieldError.checkNotNull(hour, r'SealTime', 'hour');
    BuiltValueNullFieldError.checkNotNull(minute, r'SealTime', 'minute');
    BuiltValueNullFieldError.checkNotNull(seconds, r'SealTime', 'seconds');
    BuiltValueNullFieldError.checkNotNull(
        milliSeconds, r'SealTime', 'milliSeconds');
    BuiltValueNullFieldError.checkNotNull(dateTime, r'SealTime', 'dateTime');
    BuiltValueNullFieldError.checkNotNull(date, r'SealTime', 'date');
    BuiltValueNullFieldError.checkNotNull(time, r'SealTime', 'time');
    BuiltValueNullFieldError.checkNotNull(timeZone, r'SealTime', 'timeZone');
    BuiltValueNullFieldError.checkNotNull(dayOfWeek, r'SealTime', 'dayOfWeek');
    BuiltValueNullFieldError.checkNotNull(dstActive, r'SealTime', 'dstActive');
  }

  @override
  SealTime rebuild(void Function(SealTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SealTimeBuilder toBuilder() => new SealTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SealTime &&
        year == other.year &&
        month == other.month &&
        day == other.day &&
        hour == other.hour &&
        minute == other.minute &&
        seconds == other.seconds &&
        milliSeconds == other.milliSeconds &&
        dateTime == other.dateTime &&
        date == other.date &&
        time == other.time &&
        timeZone == other.timeZone &&
        dayOfWeek == other.dayOfWeek &&
        dstActive == other.dstActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, minute.hashCode);
    _$hash = $jc(_$hash, seconds.hashCode);
    _$hash = $jc(_$hash, milliSeconds.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, timeZone.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, dstActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SealTime')
          ..add('year', year)
          ..add('month', month)
          ..add('day', day)
          ..add('hour', hour)
          ..add('minute', minute)
          ..add('seconds', seconds)
          ..add('milliSeconds', milliSeconds)
          ..add('dateTime', dateTime)
          ..add('date', date)
          ..add('time', time)
          ..add('timeZone', timeZone)
          ..add('dayOfWeek', dayOfWeek)
          ..add('dstActive', dstActive))
        .toString();
  }
}

class SealTimeBuilder implements Builder<SealTime, SealTimeBuilder> {
  _$SealTime? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _hour;
  int? get hour => _$this._hour;
  set hour(int? hour) => _$this._hour = hour;

  int? _minute;
  int? get minute => _$this._minute;
  set minute(int? minute) => _$this._minute = minute;

  int? _seconds;
  int? get seconds => _$this._seconds;
  set seconds(int? seconds) => _$this._seconds = seconds;

  int? _milliSeconds;
  int? get milliSeconds => _$this._milliSeconds;
  set milliSeconds(int? milliSeconds) => _$this._milliSeconds = milliSeconds;

  String? _dateTime;
  String? get dateTime => _$this._dateTime;
  set dateTime(String? dateTime) => _$this._dateTime = dateTime;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _timeZone;
  String? get timeZone => _$this._timeZone;
  set timeZone(String? timeZone) => _$this._timeZone = timeZone;

  String? _dayOfWeek;
  String? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(String? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  bool? _dstActive;
  bool? get dstActive => _$this._dstActive;
  set dstActive(bool? dstActive) => _$this._dstActive = dstActive;

  SealTimeBuilder();

  SealTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _hour = $v.hour;
      _minute = $v.minute;
      _seconds = $v.seconds;
      _milliSeconds = $v.milliSeconds;
      _dateTime = $v.dateTime;
      _date = $v.date;
      _time = $v.time;
      _timeZone = $v.timeZone;
      _dayOfWeek = $v.dayOfWeek;
      _dstActive = $v.dstActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SealTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SealTime;
  }

  @override
  void update(void Function(SealTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SealTime build() => _build();

  _$SealTime _build() {
    final _$result = _$v ??
        new _$SealTime._(
            year: BuiltValueNullFieldError.checkNotNull(
                year, r'SealTime', 'year'),
            month: BuiltValueNullFieldError.checkNotNull(
                month, r'SealTime', 'month'),
            day: BuiltValueNullFieldError.checkNotNull(day, r'SealTime', 'day'),
            hour: BuiltValueNullFieldError.checkNotNull(
                hour, r'SealTime', 'hour'),
            minute: BuiltValueNullFieldError.checkNotNull(
                minute, r'SealTime', 'minute'),
            seconds: BuiltValueNullFieldError.checkNotNull(
                seconds, r'SealTime', 'seconds'),
            milliSeconds: BuiltValueNullFieldError.checkNotNull(
                milliSeconds, r'SealTime', 'milliSeconds'),
            dateTime: BuiltValueNullFieldError.checkNotNull(
                dateTime, r'SealTime', 'dateTime'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'SealTime', 'date'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'SealTime', 'time'),
            timeZone: BuiltValueNullFieldError.checkNotNull(
                timeZone, r'SealTime', 'timeZone'),
            dayOfWeek: BuiltValueNullFieldError.checkNotNull(
                dayOfWeek, r'SealTime', 'dayOfWeek'),
            dstActive: BuiltValueNullFieldError.checkNotNull(
                dstActive, r'SealTime', 'dstActive'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
