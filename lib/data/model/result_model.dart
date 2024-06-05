part of 'models.dart';

ResultModel resultModelFromJson(String str) =>
    ResultModel.fromJson(json.decode(str));

String resultModelToJson(ResultModel data) => json.encode(data.toJson());

@freezed
class ResultModel with _$ResultModel {
  const factory ResultModel({
    String? id,
    Result? result,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<Step>? steps,
    String? path,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Step with _$Step {
  const factory Step({
    String? x,
    String? y,
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}
