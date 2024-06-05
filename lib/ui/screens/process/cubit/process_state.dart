part of 'process_cubit.dart';

@freezed
class ProcessState with _$ProcessState {
  const factory ProcessState.initial({
    required bool isLoading,
    @Default([]) List<SearchModel> listResult,
    @Default(0) int loadPercent,
    @Default("") String errorMassage,
  }) = _Initial;
}
