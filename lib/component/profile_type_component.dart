import 'package:conqr_assignment/common/variables.dart';
import 'package:flutter/material.dart';

class ProfileTypeComponent extends StatefulWidget {
  const ProfileTypeComponent({super.key});

  @override
  State<ProfileTypeComponent> createState() => _ProfileTypeComponentState();
}

class _ProfileTypeComponentState extends State<ProfileTypeComponent> {
  Color box1 = Colors.white;
  Color box2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: Center(
              child: Text(
                "Choose one to get started",
                style: TextStyle(fontSize: 28),
              ),
            ))
          ],
        ),
        Row(
          children: [
            // Container 1
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  height: 465,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F1F0),
                              borderRadius: BorderRadius.circular(16)),
                          height: 250,
                          child: const Center(
                            child: Text(
                              "Host explainer animated video here",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              box1 = const Color(0xffF5F2F9);
                              box2 = Colors.white;
                              Variables.profileTypeCount = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 183, 182, 181),
                                  width: 1,
                                ),
                                color: box1,
                                borderRadius: BorderRadius.circular(16)),
                            height: 85,
                            child: const Center(
                              child: Text(
                                "I’m a business looking to hire",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Container 2

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey,
                          spreadRadius: 1,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16)),
                  height: 465,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F1F0),
                              borderRadius: BorderRadius.circular(16)),
                          height: 250,
                          child: const Center(
                            child: Text(
                              "Host explainer animated video here",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              box2 = const Color(0xffF5F2F9);
                              box1 = Colors.white;
                              Variables.profileTypeCount = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 183, 182, 181),
                                  width: 1,
                                ),
                                color: box2,
                                borderRadius: BorderRadius.circular(16)),
                            height: 85,
                            child: const Center(
                              child: Text(
                                "I’m a business looking to hire",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
