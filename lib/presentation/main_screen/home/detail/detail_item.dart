import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/presentation/main_screen/home/detail/confirm/confirmation_order.dart';
import 'package:growback/utils/textstyle.dart';

class DetailItem extends StatelessWidget {
  final DetailModelNear detailModel;
  final TerdekatModel terdekatModel;

  const DetailItem({Key? key, required this.detailModel, required this.terdekatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TerdekatModel terdekatModel = terdekatModelList[0..toString()];
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ConfirmationOrder(terdekatModel: terdekatModel, detailModel: detailModel)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Container(
          child: Row(children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    detailModel.imageUrls,
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detailModel.title,
                    style: titleDetailItem,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        detailModel.rating,
                        style: ratingDetailItem
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        detailModel.ratingText,
                        style: ratingTextDetailItem
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        detailModel.price,
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff26315F),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Color(0xff0174C1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Order',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
