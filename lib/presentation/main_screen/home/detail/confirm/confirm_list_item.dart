import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/utils/app_asset.dart';

class ConfirmListItem extends StatefulWidget {
  final DetailModelNear detailModel;
  const ConfirmListItem({Key? key, required this.detailModel}) : super(key: key);

  @override
  State<ConfirmListItem> createState() => _ConfirmListItemState();
}

class _ConfirmListItemState extends State<ConfirmListItem> {

  int _quantity = 1;

  void _decrementQuantity() {
    setState(() {
      _quantity! <= 1 ? _quantity = 1 : _quantity = _quantity! - 1;
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity! >=9 ? _quantity = 9 : _quantity = _quantity! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var plus = "IDR ${int.tryParse(widget.detailModel.price)! * _quantity!}";

    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.detailModel.title, style: TextStyle(fontSize: 16, color: Colors.black )),
                Text(widget.detailModel.price, style: TextStyle(fontSize: 14,color: Colors.grey ),),
              ],
            ),
            Spacer(),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      _decrementQuantity();
                    },
                    child: Image.asset(
                      AppAsset.icon_remove,
                      width: 35,
                      height: 35,
                    )),
                SizedBox(
                  width: 20,
                ),
                Text(
                    _quantity.toString(),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      _incrementQuantity();
                    },
                    child: Image.asset(
                      AppAsset.icon_add,
                      width: 35,
                      height: 35,
                    )),
              ],
            ),
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
