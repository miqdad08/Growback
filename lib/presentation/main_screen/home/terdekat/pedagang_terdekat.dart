import 'package:flutter/material.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/widget/map.dart';

class PedagangTerdekat extends StatelessWidget {
  const PedagangTerdekat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            ///Button Back & Search
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 16),
              child: _topBody(context),
            ),
          ),
        ),
      ),
      body: MapScreen(),
    );
  }
}

Widget _topBody(context) {
  return Row(

    children: [
      /// InfoScreen & Back Button
      Expanded(
        flex: 1,
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(width: 26),
      ///Search
      Expanded(
        flex: 10,
        child: // add search bar
            Container(
          height: 45,
          decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          )
        ),
      ),
      SizedBox(width: 16),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: AppColor.oval,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Image.asset(
            AppAsset.icon_filter,
            fit: BoxFit.contain,
          ),
        ),
      )
    ],
  );
}
