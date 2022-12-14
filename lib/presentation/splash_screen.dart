import 'dart:async';

import 'package:flutter/material.dart';
import 'package:growback/presentation/auth/login_screen.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startSplashScreen()async{
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(child: Image.asset(AppAsset.logo, width: 254,)),
          Spacer(),
          Image.asset(AppAsset.background)
        ],
      ),
    );
  }
}
