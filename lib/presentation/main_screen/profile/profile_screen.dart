import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/utils/textstyle.dart';

class ProfileScreen extends StatelessWidget {
  final String text;
  const ProfileScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Edit",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          )
        ],
        title: Text("Profile", style: appBarText),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Container(
              height: 200,
              child: Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppAsset.profil_bg,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  AppAsset.profil,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                    "Ucok Albama",
                                    style: profileName
                                  ),
                                  Row(
                                    children: [
                                       Text(
                                        "128",
                                        style: profilePoint,
                                      ),
                                       Text(
                                        "| Poin",
                                        style: profileTextPoint,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                               Card(
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(10.0, 5, 10, 5),
                                  child: Text(
                                    "Top Up",
                                    style: profileTopUpText,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                   Text(
                                    "Saldo Anda",
                                    style: profileSaldoText,
                                  ),
                                  Text(
                                    text == "Success" ? "Rp. 0":"Rp 90.000" ,
                                    style: profileSaldo,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 40, 0),
            child: Column(
              children: [
                ///Name
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     Text(
                      "Ucok Albama",
                      style: profileBio,
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                ///Email
                Row(
                  children: [
                    const Icon(
                      Icons.mail,
                      size: 30,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     Text(
                      "ucok@albm.com",
                      style: profileBio,
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                ///Phone Numer
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     Text(
                      "0912-98489302",
                      style: profileBio,
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          const Spacer(flex: 2,),
          InkWell(
            onTap: (){
              SystemNavigator.pop();
            },
            child: Card(
              color: AppColor.secondary,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 10,25,10),
                child: Text(
                  "Keluar",
                  style: button,),
              ),
            ),
          ),
          const Spacer(flex: 1,),
        ],
      ),
    );
  }
}
