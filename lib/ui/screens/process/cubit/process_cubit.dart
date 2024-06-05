import 'dart:collection';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:webspark/data/model/models.dart';
import 'package:webspark/data/repository/app_repository.dart';

part 'process_cubit.freezed.dart';
part 'process_state.dart';

class ProcessCubit extends Cubit<ProcessState> {
  ProcessCubit() : super(const ProcessState.initial(isLoading: false));

  int timeLine = 0;

  init(List<AppModel> listData) async {
    List<SearchModel> searchModelsBus = [];

    timeLine = 90 ~/ listData.length;

    for (var i = 0; i < listData.length; i++) {
      List<List<PointMode>> listOfAppPointModelBus = [];
      final AppModel appModel = listData[i];

      int column = appModel.field?.first.length ?? 0;
      int rows = appModel.field?.length ?? 0;

      for (var i = 0; i < column; i++) {
        List<PointMode> pointsList = [];
        for (var j = 0; j < rows; j++) {
          final item = appModel.field![j][i];

          pointsList
              .add(PointMode(x: i, y: j, isBlocked: item.toLowerCase() != '.'));
        }

        listOfAppPointModelBus.add(pointsList);
      }

      searchModelsBus.add(SearchModel(
          id: appModel.id ?? '',
          startPoint: PointMode(
              x: appModel.start?.x ?? 0,
              y: appModel.start?.y ?? 0,
              isBlocked: false),
          endPoint: PointMode(
              x: appModel.end?.x ?? 0,
              y: appModel.end?.y ?? 0,
              isBlocked: false),
          column: column,
          listOfAppPointModel: listOfAppPointModelBus,
          rows: rows));
    }

    searshWay(listOfSearchModel: searchModelsBus);
  }

  searshWay({
    required List<SearchModel> listOfSearchModel,
  }) async {
    List<SearchModel> searchResultBus = [];
    for (var element in listOfSearchModel) {
      emit(state.copyWith(
        loadPercent: state.loadPercent + timeLine,
      ));
      await Future.delayed(const Duration(milliseconds: 200));
      final read = findPath(element);

      searchResultBus.add(element.copyWith(resultList: read));
    }

    emit(state.copyWith(loadPercent: 100, listResult: searchResultBus));
  }

  double heuristic(PointMode a, PointMode b) {
    return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2));
  }

  List<PointMode> getNeighbors(
      {required PointMode mode,
      required int cols,
      required int rows,
      required List<List<PointMode>> grid}) {
    List<PointMode> neighbors = [];

    for (var dx = -1; dx <= 1; dx++) {
      for (var dy = -1; dy <= 1; dy++) {
        if (dx == 0 && dy == 0) continue;
        int newX = mode.x + dx;
        int newY = mode.y + dy;

        if (newX >= 0 &&
            newX < rows &&
            newY >= 0 &&
            newY < cols &&
            !grid[newX][newY].isBlocked) {
          neighbors.add(grid[newX][newY]);
        }
      }
    }

    return neighbors;
  }

  List<PointMode> findPath(SearchModel searchModel) {
    PointMode start = searchModel.startPoint;
    PointMode finish = searchModel.endPoint;

    start = start.copyWith(g: 0, h: heuristic(start, finish));

    List<PointMode> openSet = [start];
    HashSet<PointMode> closedSet = HashSet();

    while (openSet.isNotEmpty) {
      openSet.sort((a, b) => ((a.g) + (a.h)).compareTo((b.g) + (b.h)));
      PointMode? current = openSet.removeAt(0);

      if (current.x == finish.x && current.y == finish.y) {
        List<PointMode> path = [];

        while (current != null) {
          path.add(current.copyWith(befoModel: null));

          current = current.befoModel;
        }

        return path.reversed.toList();
      }

      closedSet.add(current);

      for (PointMode neighbor in getNeighbors(
          mode: current,
          cols: searchModel.column,
          rows: searchModel.rows,
          grid: searchModel.listOfAppPointModel)) {
        if (closedSet.contains(neighbor)) continue;

        double tentativeG = current.g + heuristic(current, neighbor);

        if (tentativeG < neighbor.g) {
          neighbor = neighbor.copyWith(
              befoModel: current,
              g: tentativeG,
              h: heuristic(neighbor, finish));

          if (!openSet.contains(neighbor)) {
            openSet.add(neighbor);
          }
        }
      }
    }

    return [];
  }

  setError({String? errorM}) {
    emit(state.copyWith(errorMassage: errorM ?? ''));
  }

  Future<bool> sendResult() async {
    try {
      emit(state.copyWith(
        isLoading: true,
      ));
      Box sessionStorage = Hive.box('session');

      final url = await sessionStorage.get('appUrl');

      List<ResultModel> resultBuss = [];

      for (var element in state.listResult) {
        final resultPath =
            (element.resultList?.map((e) => '(${e.x},${e.y})').toList() ?? [])
                .join("->");

        ResultModel res = ResultModel(
            id: element.id,
            result: Result(
                path: resultPath,
                steps: element.resultList
                        ?.map((e) => Step(x: e.x.toString(), y: e.y.toString()))
                        .toList() ??
                    []));

        resultBuss.add(res);
      }

      await AppRepository().sendResult(
        url: url,
        resultList: resultBuss,
      );

      emit(state.copyWith(
        isLoading: false,
      ));
      return true;
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMassage: e.toString()));
      return false;
    }
  }
}
