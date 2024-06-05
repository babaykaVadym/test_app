import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:webspark/data/model/models.dart';
import 'package:webspark/utils/const.dart';

class PreviewResultScreen extends StatelessWidget {
  const PreviewResultScreen({super.key, required this.searchModel});
  final SearchModel searchModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Preview screen',
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey)),
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                for (List<PointMode> row in searchModel.listOfAppPointModel)
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (PointMode spot in row)
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.grey)),
                            width: (MediaQuery.of(context).size.width - 1) /
                                searchModel.rows,
                            height: (MediaQuery.of(context).size.width - 1) /
                                searchModel.column,
                            child: containerItem(spot),
                          ),
                      ]),
              ],
            ),
          ),
          Center(
            child: Wrap(
              runAlignment: WrapAlignment.center,
              children: searchModel.resultList!
                  .mapIndexed((index, e) => Text(
                        "(${e.x},${e.y})${index == searchModel.resultList!.length - 1 ? '' : "->"}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ))
                  .toList(),
            ),
          ),
        ],
      )),
    );
  }

  Widget containerItem(PointMode elem) {
    Color text = Colors.black;

    Color? colorPoint;
    if (elem == searchModel.startPoint) {
      colorPoint = AppColors.greenishCyan;
    } else if (elem == searchModel.endPoint) {
      colorPoint = AppColors.burntGreen;
    } else if (searchModel.resultList!.firstWhereOrNull(
            (element) => element.x == elem.x && element.y == elem.y) !=
        null) {
      colorPoint = AppColors.lightGreen;
    }

    if (elem.isBlocked) {
      colorPoint = AppColors.black;
      text = AppColors.white;
    }

    return Container(
      color: colorPoint ?? AppColors.white,
      child: Center(
          child: Text(
        '${elem.x},${elem.y}',
        style: TextStyle(color: text),
      )),
    );
  }
}
