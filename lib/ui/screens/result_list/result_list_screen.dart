import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:webspark/data/model/models.dart';
import 'package:webspark/ui/screens/home/home_screen.dart';
import 'package:webspark/ui/screens/preview/preview_screen.dart';
import 'package:webspark/utils/const.dart';

class ResultListScreen extends StatelessWidget {
  const ResultListScreen({super.key, required this.listResult});
  final List<SearchModel> listResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.white,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ),
          ),
        ),
        title: const Text(
          'Result list screen',
          //
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final item = listResult[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PreviewResultScreen(
                        searchModel: item,
                      );
                    },
                  ),
                );
              },
              child: Container(
                color: AppColors.white,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Center(
                        child: Wrap(
                          runAlignment: WrapAlignment.center,
                          children: item.resultList!
                              .mapIndexed((index, e) => Text(
                                    "(${e.x},${e.y})${index == item.resultList!.length - 1 ? '' : "->"}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    const Divider()
                  ],
                ),
              ),
            );
          },
          itemCount: listResult.length,
        ),
      ),
    );
  }
}
