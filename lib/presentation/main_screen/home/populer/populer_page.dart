import 'package:flutter/material.dart';
import 'package:growback/model/populer_model.dart';
import 'package:growback/presentation/main_screen/home/detail/detail_mart.dart';
import 'package:growback/presentation/main_screen/home/populer/populer_item.dart';
import 'package:growback/presentation/main_screen/home/terdekat/pedagang_terdekat.dart';

class PopulerPage extends StatefulWidget {

  @override
  State<PopulerPage> createState() => _PopulerPageState();
}

class _PopulerPageState extends State<PopulerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PedagangTerdekat()));
            },
            icon: Image.asset("assets/images/ic_location.png"),
          ),
        ],
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
        title: const Text("Populer", style: TextStyle(color: Color(0xff26315F))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height ,
              child: ListView.builder(itemBuilder: (context, index){
                final PopulerModel populerModel = populerModelList[index];
                return InkWell(
                  onTap: () {
                  },
                  child: PopulerItem(populerModel: populerModel),
                );
              },
                itemCount: populerModelList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
