import 'dart:async';

import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/presentation/main_screen/home/detail/detail_oder/detail_order_item.dart';
import 'package:growback/presentation/main_screen/home/detail/detail_oder/review_order.dart';
import 'package:growback/utils/app_color.dart';

class DetailOrder extends StatelessWidget {
  final String text;
  final TerdekatModel terdekatModel;

  const DetailOrder({Key? key, required this.text, required this.terdekatModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundConfirm,
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff26315F),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Pesanan Kamu",
            style: TextStyle(color: Color(0xff26315F))),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                text,
                 // "Selesai" : "$_start" && widget.text == "Selesai" ? "Selesai": "$_start" ,
                style: TextStyle(
                  fontSize: 23,
                  color: AppColor.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          terdekatModel.title,
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _listItem(terdekatModelList[0..toString()]),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Rp. 100.000',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Catatan (opsional) :",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewOrder()));
                },
                child: Card(
                  color: AppColor.secondary,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 10,30,10),
                    child:  Text(
                      "Review",
                      style: const TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _listItem(TerdekatModel model) {
  return ListView.builder(
    itemBuilder: (context, index) {
      DetailModelNear detailModel = model.listProduct[index];
      return DetailOrderItem(detailModel: detailModel);
    },
    itemCount: model.listProduct.length - 2,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  );
}
