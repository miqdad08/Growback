import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/presentation/main_screen/history/history_item.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/utils/textstyle.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TerdekatModel terdekatModel = terdekatModelList[0..toString()];
    return Scaffold(
      backgroundColor: AppColor.backgroundConfirm,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:
             Text("History", style: appBarText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _listItem(terdekatModel),
          ],
        ),
      ),
    );
  }
}

Widget _listItem(TerdekatModel terdekatModel) {
  return ListView.builder(
    itemBuilder: (context, index) {
      DetailModelNear detailModel = terdekatModel.listProduct[index];
      return HistoryItem(detailModel: detailModel);
    },
    itemCount: terdekatModelList.length - 3,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  );
}
