import 'package:freezed_annotation/freezed_annotation.dart';

/// Money crosses the wire as a JSON number *or* a string depending on how the
/// backend serialises `Decimal`, and a self-care app that throws on one of the
/// two is broken half the time. Accept both, emit a string so no precision is
/// lost on the way back out.
class DecimalConverter implements JsonConverter<double, Object?> {
  const DecimalConverter();

  @override
  double fromJson(Object? json) => switch (json) {
    null => 0,
    final num n => n.toDouble(),
    final String s => double.tryParse(s) ?? 0,
    _ => 0,
  };

  @override
  Object toJson(double object) => object.toStringAsFixed(2);
}

/// Same, for fields the backend may omit entirely.
class NullableDecimalConverter implements JsonConverter<double?, Object?> {
  const NullableDecimalConverter();

  @override
  double? fromJson(Object? json) => switch (json) {
    null => null,
    final num n => n.toDouble(),
    final String s => double.tryParse(s),
    _ => null,
  };

  @override
  Object? toJson(double? object) => object?.toStringAsFixed(2);
}
