part of 'models.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    required List<List<PointMode>> listOfAppPointModel,
    required int column,
    required String id,
    required int rows,
    required PointMode startPoint,
    required PointMode endPoint,
    List<PointMode>? resultList,
  }) = _SearchModel;
}
