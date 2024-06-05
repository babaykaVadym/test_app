part of 'models.dart';

@freezed
class PointMode with _$PointMode {
  const factory PointMode({
    required int x,
    required int y,
    @Default(double.infinity) double g,
    @Default(double.infinity) double h,
    PointMode? befoModel,
    required bool isBlocked,
  }) = _PointMode;
}
