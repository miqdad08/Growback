import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/textstyle.dart';

class DetailOrderItem extends StatelessWidget {
  final DetailModelNear detailModel;
  const DetailOrderItem({Key? key, required this.detailModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(detailModel.title, style: titleOrderItem),
                Text(detailModel.price, style: priceOrderItem,),
              ],
            ),
            Spacer(),
            Text(
              "1",
              style: qtyOrderItem
            ),
            SizedBox(width: 50,)
          ],
        ),
        Divider(
          color: Colors.grey,
          height: 20,
          thickness: 1,
        ),
      ],
    );
  }
}
