import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/utils/textstyle.dart';

class HistoryItem extends StatelessWidget {
  final DetailModelNear detailModel;

  const HistoryItem({Key? key, required this.detailModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
      child: Stack(
        children: [
          Wrap(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1b000000),
                        blurRadius: 9,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              detailModel.imageUrls,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(detailModel.title,
                                style: titleHistory),
                            const Text("1x"),
                            Container(
                              height: 2,
                              color: Colors.grey,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                detailModel.price,
                                style: priceHistory
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 25,
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
            child:  Center(
              child: Text(
                "24 jul 2022, 02:46",
                style: dateHistory,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
