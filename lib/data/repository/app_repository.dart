import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:webspark/data/model/models.dart';

class AppRepository {
  final dio = Dio();

  AppRepository();

  Future<List<AppModel>> getEventsList({
    required String url,
  }) async {
    debugPrint("[AppRepository] getEventsList");
    try {
      final response = await dio.get(
        url,
      );

      List<AppModel> news = [];

      if (response.statusCode != 200) {
        throw response.data['message'] ?? "Something goes wrong";
      }

      for (var element in response.data['data']) {
        news.add(AppModel.fromJson(element));
      }

      return news;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? "Something goes wrong";
    } catch (e) {
      throw "Something goes wrong";
    }
  }

  Future sendResult({
    required String url,
    required List<ResultModel> resultList,
  }) async {
    debugPrint("[AppRepository] sendResult");
    try {
      List<Map<String, dynamic>> data = [];

      for (var element in resultList) {
        Map<String, dynamic> values = element.toJson();
        data.add(values);
      }

      await dio.post(
        url,
        data: data,
      );
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? "Something goes wrong";
    } catch (e) {
      throw "Something goes wrong";
    }
  }
}
