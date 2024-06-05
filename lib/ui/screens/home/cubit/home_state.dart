part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required bool isLoading,
    @Default("") String url,
    @Default([]) List<AppModel> listData,
    @Default("") String errorMassage,
  }) = _Initial;
}
