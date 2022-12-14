import 'package:flutter/material.dart';
import 'package:growback/presentation/auth/login_screen.dart';
import 'package:growback/presentation/main_screen/main_screen.dart';

import '../../utils/app_asset.dart';
import '../../utils/app_color.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),

            /// Image Dajek
            Hero(
              tag: "Image",
              child: Image.asset(AppAsset.logo2, width: 254),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  ///TextField Name
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ///TextField UserName
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ///TextField Email
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ///TextField Passwod
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///Button Login
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.primary),
                      child: const Center(
                          child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  /// Button Sign Up with Google
                  Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAsset.google_logo,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Sign Up With Google",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                ],
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                Expanded(flex: 2, child: Image.asset(AppAsset.background)),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 40, 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
