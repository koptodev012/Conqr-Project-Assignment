
import 'package:flutter/material.dart';

class ExperienceContainer extends StatefulWidget {
  const ExperienceContainer({super.key});

  @override
  State<ExperienceContainer> createState() => _ExperienceContainerState();
}

class _ExperienceContainerState extends State<ExperienceContainer> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25, top: 10, bottom: 10),
                                child: Container(
                                  // color: Colors.yellow,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "Adore Beauty Group",
                                            style: TextStyle(
                                              fontFamily: 'workSans',
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "Transformation Consultant",
                                            style: TextStyle(
                                              fontFamily: 'workSans',
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "May 2023 to Present",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'workSans',
                                                fontWeight: FontWeight.bold),
                                          ))
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "4 Months",
                                            style: TextStyle(
                                              fontFamily: 'workSans',
                                              color: Color.fromARGB(255, 96, 93, 93),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'workSans',
                                            ),
                                          ))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 10.0),
                                              child: new Divider(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
  }
}