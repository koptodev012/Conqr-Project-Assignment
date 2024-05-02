// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Signup_screenState();
}

// ignore: camel_case_types
class _Signup_screenState extends State<Login_screen> {
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
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, bottom: 10),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Welcome back to ",
                                          style: TextStyle(fontSize: 42),
                                        ),
                                        Text(
                                          "Conqr",
                                          style: TextStyle(
                                              fontSize: 42,
                                              color: Color(0xff5404A4)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 589,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 64,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              labelText: "Email",
                                              labelStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: const BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: const BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 64,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              labelText: "Password",
                                              labelStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: const BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: const BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                        const Text(
                                          "Forgot Your Password?",
                                          style: TextStyle(fontSize: 21),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: const Center(child: Text("Log In")),
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
                                                  Text("Continue With Google")),
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
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text(
                                                  " Signup Now",
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
