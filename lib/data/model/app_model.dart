part of 'models.dart';

AppModel appModelFromJson(String str) => AppModel.fromJson(json.decode(str));

String appModelToJson(AppModel data) => json.encode(data.toJson());

@freezed
class AppModel with _$AppModel {
  const factory AppModel({
    String? id,
    List<String>? field,
    End? start,
    End? end,
  }) = _AppModel;

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}

@freezed
class End with _$End {
  const factory End({
    int? x,
    int? y,
  }) = _End;

  factory End.fromJson(Map<String, dynamic> json) => _$EndFromJson(json);
}
