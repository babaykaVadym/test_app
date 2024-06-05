import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:webspark/data/model/models.dart';
import 'package:webspark/data/repository/app_repository.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial(isLoading: false));

  setError({String? errorM}) {
    emit(state.copyWith(errorMassage: errorM ?? ''));
  }

  Future<List<AppModel>> loadData({
    required String url,
  }) async {
    try {
      emit(state.copyWith(
        isLoading: true,
      ));
      Box sessionStorage = Hive.box('session');

      final result = await AppRepository().getEventsList(url: url);

      await sessionStorage.put("appUrl", url);

      emit(state.copyWith(
        isLoading: false,
      ));
      return result;
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMassage: e.toString()));
      return [];
    }
  }
}
