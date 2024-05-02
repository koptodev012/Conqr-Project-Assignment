import 'package:conqr_assignment/common/variables.dart';
import 'package:conqr_assignment/component/choose_your_preference_component.dart';
import 'package:conqr_assignment/component/get_matched_component.dart';
import 'package:conqr_assignment/component/match_profile_component.dart';
import 'package:conqr_assignment/component/profile_details_component.dart';
import 'package:conqr_assignment/component/profile_type_component.dart';

import 'package:flutter/material.dart';

class StepperInFlutter extends StatefulWidget {
  const StepperInFlutter({super.key});

  @override
  State<StepperInFlutter> createState() => _StepperInFlutter();
}

class _StepperInFlutter extends State<StepperInFlutter> {
  static int tempIndex = 0;
  int activeIndex = 0;

  bool indexFive = false;
  @override
  Widget build(BuildContext context) {
    // --------------------------------------
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    print("height: $height");
    print("width: $width");

    List<Step> stepList() => [
          Step(
              state: activeIndex <= 0 ? StepState.indexed : StepState.complete,
              isActive: activeIndex >= 0,
              title: const Text(""),
              content: const ProfileTypeComponent()),
          // ------------------------------------
          Step(
            state: activeIndex <= 1 ? StepState.indexed : StepState.complete,
            isActive: activeIndex >= 1,
            title: const Text(""),
            content: const UserTypeComponent(),
          ),
          // ------------------------------------

          Step(
            state: activeIndex <= 2 ? StepState.indexed : StepState.complete,
            isActive: activeIndex >= 2,
            title: const Text(""),
            content: const ChooseYourPreferenceComponent(),
          ),
          // ------------------------------------

          Step(
            state: activeIndex <= 3 ? StepState.indexed : StepState.complete,
            isActive: activeIndex >= 3,
            title: const Text(""),
            content: const MatchProfileComponent(),
          ),
          // ------------------------------------

          Step(
              state: activeIndex <= 4 ? StepState.indexed : StepState.complete,
              isActive: activeIndex >= 4,
              title: const Text(""),
              content: const GetMatchedComponent()),
        ];
    // ======================================
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Theme(
                  data: ThemeData(
                    canvasColor: Colors.white,
                  ),
                  child: Stepper(
                    controlsBuilder:
                        (BuildContext context, ControlsDetails details) {
                      Variables.stepperBackIndex = details.onStepCancel;
                      return Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(children: [
                            // if (activeIndex != 0)
                            //   Expanded(
                            //     flex: 2,
                            //     child: InkWell(
                            //       onTap: details.onStepCancel,
                            //       child: Padding(
                            //         padding: const EdgeInsets.only(left: 30.0),
                            //         child: Container(
                            //           width: 250,
                            //           decoration: BoxDecoration(
                            //               color: const Color(0xff5404A5),
                            //               borderRadius:
                            //                   BorderRadius.circular(10)),
                            //           child: const Padding(
                            //             padding: EdgeInsets.all(8.0),
                            //             child: Row(
                            //               mainAxisAlignment:
                            //                   MainAxisAlignment.center,
                            //               children: [
                            //                 Text(
                            //                   "Back",
                            //                   style: TextStyle(
                            //                       color: Colors.white,
                            //                       fontWeight: FontWeight.bold,
                            //                       fontSize: 16),
                            //                 )
                            //               ],
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            Expanded(
                              flex: 8,
                              child: InkWell(
                                onTap: details.onStepContinue,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0, left: 30),
                                  child: Container(
                                    width: 250,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff5404A5),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            tempIndex < 4
                                                ? "Next"
                                                : "Get Me Matched",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]));
                    },
                    steps: stepList(),
                    type: StepperType.horizontal,
                    currentStep: activeIndex,
                    onStepCancel: () {
                      if (activeIndex == 0) {
                        return;
                      }
                      setState(() {
                        activeIndex -= 1;
                        print("Decrement Active Index: $activeIndex");

                        if (tempIndex <= 0) {
                          tempIndex = 0;
                        }
                      });
                    },
                    // ----------------------------------------------------
                    onStepContinue: () {
                      if (activeIndex < (stepList().length - 1)) {
                        setState(() {
                          if (activeIndex == 0) {
                            print("activeIndex: $activeIndex");

                            if (Variables.profileTypeCount != 0) {
                              activeIndex += 1;
                              tempIndex++;
                            }
                          } else if (activeIndex == 1) {
                            print("activeIndex: $activeIndex");

                            if (Variables.formKey.currentState!.validate()) {
                              activeIndex += 1;
                              tempIndex++;
                            }
                          } else if (activeIndex == 2) {
                            print("activeIndex: $activeIndex");

                            activeIndex += 1;
                            tempIndex++;
                          } else if (activeIndex == 3) {
                            print("activeIndex: $activeIndex");

                            if (Variables.formKey1.currentState!.validate()) {
                              activeIndex += 1;
                              tempIndex++;
                            }
                          }
                        });
                      }

                      if (activeIndex == 4) {
                        if ((Variables.isSelected1 == true) &&
                            (Variables.isSelected2 == true)) {
                          showDialog(
                              barrierColor: Colors.white,
                              context: context,
                              builder: (_) => AlertDialog(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    content: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Image.asset(
                                                  "assets/images/gif-logo-unscreen 3.png",
                                                  height: 120,
                                                  width: 120,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Center(
                                                      child: Text(
                                                "Welcome to Conqr",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    letterSpacing: 1,
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ))),
                                            ],
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20, bottom: 10),
                                                child: Text(
                                                  maxLines: 2,
                                                  "You're on a Free plan, which means you can match, connect and chat directly with your top 3 business matches completely free.",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              )),
                                            ],
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 20.0),
                                                child: Text(
                                                  "To unlock more connections, you can manage your plan under profile settings.",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              )),
                                            ],
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Text(
                                                  "Where to start?",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      letterSpacing: 1,
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                            ],
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Text(
                                                  "We suggest you watch our quick 3 minute platform walkthrough below",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              )),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20.0),
                                            child: Expanded(
                                              child: Container(
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: const Expanded(
                                                  child: Center(
                                                      child: Icon(
                                                          Icons.play_arrow)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff5404A5),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Let's Go",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ));
                        }
                      }
                    },
                    //======================================================
                    onStepTapped: (int index) {
                      setState(() {
                        activeIndex = index;
                        tempIndex = index;
                        print(activeIndex);
                        print(tempIndex);
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Logo-01 1.png",
                  width: width * 0.13,
                  height: height * 0.07,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
