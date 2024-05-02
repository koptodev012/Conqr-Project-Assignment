
// ignore_for_file: camel_case_types

import 'package:conqr_assignment/views/auth/login_screen.dart';
import 'package:flutter/material.dart';

// ignore: duplicate_ignore
// ignore: camel_case_types
class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  @override
  Widget build(BuildContext context) {
    // --------------------------------------
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    print("height: $height");
    print("width: $width");
    // ======================================

    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/Logo-01 1.png",
              width: width * 0.13,
              height: height * 0.07,
            )),
        Expanded(
          flex: 9,
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffF8F9FA),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50.0, top: 50, right: 75, bottom: 20),
                          child: Material(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              height: 500,
                              width: width * 0.51,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/gif-logo-unscreen 3.png",
                                    width: 120,
                                    height: 120,
                                  ),
                                  const Text(
                                    "A better world of work begins here.",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const Text(
                                    "Conqr helps businesses and talent match immediately using AI.",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const Text(
                                    "Create your Conqr account",
                                    style: TextStyle(fontSize: 35),
                                  ),
                                  SizedBox(
                                    width: 589,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: const Center(
                                              child:
                                                  Text("Sign Up with google")),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Row(
                                            children: [
                                              Expanded(child: Divider()),
                                              Text(" OR "),
                                              Expanded(child: Divider()),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: const Center(
                                              child:
                                                  Text("Sign Up with email")),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Dont have an account?",
                                                style: TextStyle(fontSize: 21),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Login_screen()));
                                                },
                                                child: const Text(
                                                  " Log in Now",
                                                  style: TextStyle(
                                                      fontSize: 21,
                                                      color: Color(0xff5404A4)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Image.asset(
                    "assets/images/Group 6.png",
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
