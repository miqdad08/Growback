import 'dart:async';

import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/presentation/main_screen/home/detail/confirm/confirm_list_item.dart';
import 'package:growback/presentation/main_screen/main_screen.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/utils/textstyle.dart';
class ConfirmationOrder extends StatelessWidget {
  final TerdekatModel terdekatModel;
  final DetailModelNear detailModel;

  const ConfirmationOrder(
      {Key? key, required this.terdekatModel, required this.detailModel})
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
      title: const Text("Konfirmasi Order",
          style: TextStyle(color: Color(0xff26315F))),
    ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
               Text(
                'Pesanan',
                style: infoScreenText
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
                          style: tittleConfirm
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _listItem(terdekatModel),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Text(
                              "Total",
                              style: tittleConfirm
                            ),
                            Text(
                              'Rp. 90.000',
                              style: totalPriceConfirm
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return _successDialog(context);
              },
            );
          },
          child: Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.secondary),
            child: const Center(
                child: Text(
              'Pesan',
              style: TextStyle(color: Colors.white, fontSize: 21),
            )),
          ),
        ),
      ),
    );
  }
}

Widget _listItem(TerdekatModel model) {
  return ListView.builder(
    itemBuilder: (context, index) {
      DetailModelNear detailMode = model.listProduct[index];
      return ConfirmListItem(detailModel: detailMode);
    },
    itemCount: model.listProduct.length - 2,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  );
}

Widget _cancelDialog(BuildContext context) {
  return AlertDialog(
    insetPadding: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: Image.asset(
      AppAsset.icon_cancel,
      width: 110,
      height: 110,
    ),
    content: const Text(
      'Kamu Yakin Untuk Mencari Pedagang Lain ?',
      style: TextStyle(
          fontSize: 26, color: AppColor.text, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Gak Jadi deh',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.secondary,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen(text: "")));
                },
                child: const Text(
                  'Yakin',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      )
    ],
  );
}

Widget _successDialog(BuildContext context) {

  void _sendData(BuildContext context) {
    String textToSend = "Success";
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => MainScreen(
          text: textToSend,
        )));}

  return Dialog(
    insetPadding: EdgeInsets.all(10),
    child: Wrap(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAsset.icon_success,
                width: 125,
                height: 125,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Yey, Orderan kamu sukses dipesan.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: AppColor.text,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Mohon tunggu dengan sabar\n“Penjual mencintai pembeli yang santuy”",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: AppColor.text,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "3.00",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColor.text,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    " Waktu tunggu kamu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColor.text,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  showDialog(
                      context: context,
                      builder: (context) {
                        return _cancelDialog(context);
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text("Mencari Pedagang Lain",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  _sendData(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text("Menunggu",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
