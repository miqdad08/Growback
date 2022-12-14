import 'package:flutter/material.dart';
import 'package:growback/presentation/auth/register_screen.dart';
import 'package:growback/utils/app_asset.dart';
import 'package:growback/utils/app_color.dart';

import '../main_screen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen(text: 'asd',)));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.primary),
                      child: const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    ),
                  ),
                  const SizedBox(
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
                            const BoxShadow(
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
                Image.asset(AppAsset.background),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(40, 0, 40, 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don’t  have an account?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterScreen()));
                              },
                              child: const Text(
                                "Sign Up",
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
