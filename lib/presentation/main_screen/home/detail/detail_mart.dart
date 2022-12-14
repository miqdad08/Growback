import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';
import 'package:growback/presentation/main_screen/home/detail/detail_item.dart';
import 'package:growback/utils/textstyle.dart';

class DetailMartPage extends StatelessWidget {
  TerdekatModel terdekatModel;

  DetailMartPage({Key? key, required this.terdekatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // DetailModelNear detailMode = terdekatModel.listProduct[0];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    terdekatModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    child: Container(
                      width: 200,
                      child: Text(
                        textAlign: TextAlign.center   ,
                        terdekatModel.title,
                        style: titleDetailMart,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                    left: 16,
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _listItem(terdekatModel),
            )
          ],
        ),
      ),
    );
  }
}

Widget _listItem(TerdekatModel model) {

  return ListView.builder(
    itemBuilder: (context, index) {
      DetailModelNear detailMode = model.listProduct[index];
      return DetailItem(detailModel: detailMode,terdekatModel: model,);},
    itemCount: model.listProduct.length,
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  );
}