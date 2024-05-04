import 'dart:html';

import 'package:conqr_assignment/widget/experienceContainer.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({super.key});

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  // ------------------------------------------------
  final TWO_PI = 3.14 * 2;
  var height1 = 150.0;
  var width1 = 150.0;
  bool selected = false;
  //...... File Downloader........

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = "resume";
    anchorElement.click();
  }

  //.............................

  List<String> hobbyList = [
    'Design Skill',
    'Digital',
    'Buisness Skill',
    'Legal',
    'Lorem',
    'Level',
    'Ipsum',
    'Sales',
    'Social Media',
    'Brand',
  ];
  List<String> industry = [
    'Education and Training',
    'Not for profit',
    'Retail Trade',
  ];
  List<String> previousRole = [
    'Fontend Developer',
    'Backed Developer',
    'Python Developer',
    'Flutter Developer'
  ];
  List<String> locationOptions = [
    'Remote',
    'Outside Hours',
    'Hybrid',
    'Selected Days'
  ];
  List<String> availabiltiy = [
    '1 hr - 5 hr',
    '5 hr - 10 hr',
    '10 hr - 20 hr',
    '20+ hr'
  ];

  List<String>? selectedHobby = [];
  List<String>? selectedIndustry = [];
  List<String>? selectedPreviousRole = [];
  List<String>? selectedLocation = [];
  List<String>? selectedAvailability = [];

  Color kActiveColor = const Color(0xff6901AE);

  // ================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: ((context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Colors.white,
              floating: true,
              title: const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10),
                child: Text(
                  "Match Details",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 10),
                child: Image.asset(
                  "assets/images/Button.png",
                  height: 35,
                  width: 36,
                ),
              ),
              centerTitle: false,
            )
          ]),
      body: Container(
        color: const Color(0xffF8F9FA),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row Container - 1
              Expanded(
                  flex: 6,
                  child: Container(
                    color: const Color(0xffF8F9FA),
                    child: Column(
                      children: [
                        // Container 1
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            TweenAnimationBuilder(
                                                tween:
                                                    Tween(begin: 0.0, end: 1.0),
                                                duration:
                                                    const Duration(seconds: 10),
                                                builder:
                                                    (context, value, child) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: SizedBox(
                                                      width: height1,
                                                      height: width1,
                                                      child: Stack(
                                                        children: [
                                                          ShaderMask(
                                                            shaderCallback:
                                                                (rect) {
                                                              return SweepGradient(
                                                                  startAngle:
                                                                      0.0,
                                                                  stops: [
                                                                    value,
                                                                    value,
                                                                  ],
                                                                  endAngle:
                                                                      TWO_PI,
                                                                  center:
                                                                      Alignment
                                                                          .center,
                                                                  colors: [
                                                                    const Color(
                                                                        0xffD2EEFC),
                                                                    const Color(
                                                                            0xffE0E0E0)
                                                                        .withAlpha(
                                                                            55)
                                                                  ]).createShader(rect);
                                                            },
                                                            child: Container(
                                                              width: width1,
                                                              height: height1,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xff6901AE),
                                                                // color: Colors.white
                                                              ),
                                                            ),
                                                          ),
                                                          Center(
                                                            child: Container(
                                                              width:
                                                                  width1 - 20,
                                                              height:
                                                                  height1 - 20,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                shape: BoxShape
                                                                    .circle,
                                                                image:
                                                                    DecorationImage(
                                                                  image: AssetImage(
                                                                      "assets/images/Ellipse 1.png"),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                })
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "Nikola Clement ",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'workSans'),
                                                  ),
                                                  Image.asset(
                                                    "assets/images/Frame 1321314628.png",
                                                    height: 24,
                                                    width: 54,
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                "FTE: \$100-\$150k",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'workSans'),
                                              ),
                                              const Text(
                                                "Flex: \$100/hr",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'workSans'),
                                              ),
                                              const Text(
                                                "Melbourne, Victoria",
                                                style: TextStyle(
                                                    fontFamily: 'workSans'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xffE0E0E0),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4.0,
                                                    bottom: 4,
                                                    right: 12,
                                                    left: 12),
                                                child: Center(
                                                    child: Text(
                                                  "90%",
                                                  style: TextStyle(
                                                      color: kActiveColor,
                                                      fontFamily: 'workSans'),
                                                )),
                                              ),
                                            ),
                                            const Text(
                                              "Excellent",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'workSans',
                                                  fontSize: 18),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                const Text(
                                                  "CONQR Verified ",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 96, 95, 95),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'workSans'),
                                                ),
                                                Image.asset(
                                                  "assets/images/mnj-verifycheck.370feef4 1.png",
                                                  height: 22,
                                                  width: 22,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Image.asset(
                                                  "assets/images/Frame 300.png",
                                                  height: 30,
                                                  width: 30,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Image.asset(
                                                    "assets/images/linkedin 2.png",
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 30.0,
                                        bottom: 15,
                                        top: 4,
                                        left: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xff6901AE),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 8.0,
                                                    bottom: 8,
                                                    left: 50,
                                                    right: 50),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Connect",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              'workSans',
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xffE0E0E0),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                  onTap: () => downloadFile(
                                                      "assets/images/Student Athlete Resume.pdf"),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Image.asset(
                                                      "assets/images/DownloadSimple.png",
                                                      height: 28,
                                                      width: 28,
                                                    ),
                                                  )),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 8.0,
                                                    bottom: 8,
                                                    right: 12),
                                                child: Text(
                                                  "  Download Resume",
                                                  style: TextStyle(
                                                      fontFamily: 'workSans',
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Container 2

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Vector (1).png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Executive Summary",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'workSans',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'workSans',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Container - 3
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Certificate.png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Certifications",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'workSans',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12,
                                                          top: 8,
                                                          bottom: 8),
                                                  child: Image.asset(
                                                    "assets/images/FilePdf.png",
                                                    height: 25,
                                                    width: 25,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 12.0,
                                                          left: 12,
                                                          top: 8,
                                                          bottom: 8),
                                                  child: GestureDetector(
                                                    onTap: () => downloadFile(
                                                        "https://www.theiotacademy.co/assets/images/certificates/java-certificate.jpg"),
                                                    child: Text(
                                                      "Certificate.PDF",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color: kActiveColor,
                                                          fontFamily:
                                                              'workSans',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12,
                                                          top: 8,
                                                          bottom: 8),
                                                  child: Image.asset(
                                                    "assets/images/MicrosoftWordLogo.png",
                                                    height: 25,
                                                    width: 25,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12,
                                                          top: 8,
                                                          bottom: 8,
                                                          right: 12),
                                                  child: GestureDetector(
                                                    onTap: () => downloadFile(
                                                        "https://pbs.twimg.com/media/D6FRHWuUIAIYEJ0.jpg:large"),
                                                    child: Text(
                                                      "Certificate2.Word",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color: kActiveColor,
                                                          fontFamily:
                                                              'workSans',
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Container 4
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Vector (2).png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Linkedin Details",
                                          style: TextStyle(
                                              fontFamily: 'workSans',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                // color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0,
                                            top: 10,
                                            bottom: 10,
                                            right: 8),
                                        child: Row(children: [
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                            maxLines: 10,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'workSans',
                                            ),
                                          )
                                        ]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Container 5
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Lightbulb.png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Skill Sets",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'workSans',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Wrap(
                                            children: hobbyList.map(
                                              (hobby) {
                                                bool isSelected = false;
                                                if (selectedHobby!
                                                    .contains(hobby)) {
                                                  isSelected = true;
                                                }
                                                return GestureDetector(
                                                  onTap: () {
                                                    if (!selectedHobby!
                                                        .contains(hobby)) {
                                                      if (selectedHobby!
                                                              .length <
                                                          5) {
                                                        selectedHobby!
                                                            .add(hobby);
                                                        setState(() {});
                                                        print(selectedHobby);
                                                      }
                                                    } else {
                                                      selectedHobby!
                                                          .removeWhere(
                                                              (element) =>
                                                                  element ==
                                                                  hobby);
                                                      setState(() {});
                                                      print(selectedHobby);
                                                    }
                                                  },
                                                  child: Container(
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5,
                                                          vertical: 4),
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 5,
                                                                horizontal: 12),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            border: Border.all(
                                                                color: isSelected
                                                                    ? kActiveColor
                                                                    : const Color(
                                                                        0xffE0E0E0),
                                                                width: 1)),
                                                        child: Text(
                                                          hobby,
                                                          style: TextStyle(
                                                              color: isSelected
                                                                  ? kActiveColor
                                                                  : Colors
                                                                      .black,
                                                              fontSize: 14),
                                                        ),
                                                      )),
                                                );
                                              },
                                            ).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Container 6
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Factory.png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Industry",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'workSans',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Wrap(
                                            children: industry.map(
                                              (hobby) {
                                                bool isSelected = false;
                                                if (selectedIndustry!
                                                    .contains(hobby)) {
                                                  isSelected = true;
                                                }
                                                return GestureDetector(
                                                  onTap: () {
                                                    if (!selectedIndustry!
                                                        .contains(hobby)) {
                                                      if (selectedIndustry!
                                                              .length <
                                                          5) {
                                                        selectedIndustry!
                                                            .add(hobby);
                                                        setState(() {});
                                                        print(selectedIndustry);
                                                      }
                                                    } else {
                                                      selectedIndustry!
                                                          .removeWhere(
                                                              (element) =>
                                                                  element ==
                                                                  hobby);
                                                      setState(() {});
                                                      print(selectedIndustry);
                                                    }
                                                  },
                                                  child: Container(
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5,
                                                          vertical: 4),
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 5,
                                                                horizontal: 12),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            border: Border.all(
                                                                color: isSelected
                                                                    ? kActiveColor
                                                                    : const Color(
                                                                        0xffE0E0E0),
                                                                width: 1)),
                                                        child: Text(
                                                          hobby,
                                                          style: TextStyle(
                                                              color: isSelected
                                                                  ? kActiveColor
                                                                  : Colors
                                                                      .black,
                                                              fontSize: 14),
                                                        ),
                                                      )),
                                                );
                                              },
                                            ).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Container 7
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Briefcase (1).png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Previous Roles",
                                          style: TextStyle(
                                              fontFamily: 'workSans',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Wrap(
                                            children: previousRole.map(
                                              (hobby) {
                                                bool isSelected = false;
                                                if (selectedPreviousRole!
                                                    .contains(hobby)) {
                                                  isSelected = true;
                                                }
                                                return GestureDetector(
                                                  onTap: () {
                                                    if (!selectedPreviousRole!
                                                        .contains(hobby)) {
                                                      if (selectedPreviousRole!
                                                              .length <
                                                          5) {
                                                        selectedPreviousRole!
                                                            .add(hobby);
                                                        setState(() {});
                                                        print(
                                                            selectedPreviousRole);
                                                      }
                                                    } else {
                                                      selectedPreviousRole!
                                                          .removeWhere(
                                                              (element) =>
                                                                  element ==
                                                                  hobby);
                                                      setState(() {});
                                                      print(
                                                          selectedPreviousRole);
                                                    }
                                                  },
                                                  child: Container(
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5,
                                                          vertical: 4),
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 5,
                                                                horizontal: 12),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            border: Border.all(
                                                                color: isSelected
                                                                    ? kActiveColor
                                                                    : const Color(
                                                                        0xffE0E0E0),
                                                                width: 1)),
                                                        child: Text(
                                                          hobby,
                                                          style: TextStyle(
                                                              color: isSelected
                                                                  ? kActiveColor
                                                                  : Colors
                                                                      .black,
                                                              fontSize: 14),
                                                        ),
                                                      )),
                                                );
                                              },
                                            ).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Container 8
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/MapPin.png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Location Options",
                                          style: TextStyle(
                                              fontFamily: 'workSans',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Wrap(
                                            children: locationOptions.map(
                                              (hobby) {
                                                bool isSelected = false;
                                                if (selectedLocation!
                                                    .contains(hobby)) {
                                                  isSelected = true;
                                                }
                                                return GestureDetector(
                                                  onTap: () {
                                                    if (!selectedLocation!
                                                        .contains(hobby)) {
                                                      if (selectedLocation!
                                                              .length <
                                                          5) {
                                                        selectedLocation!
                                                            .add(hobby);
                                                        setState(() {});
                                                        print(selectedLocation);
                                                      }
                                                    } else {
                                                      selectedLocation!
                                                          .removeWhere(
                                                              (element) =>
                                                                  element ==
                                                                  hobby);
                                                      setState(() {});
                                                      print(selectedLocation);
                                                    }
                                                  },
                                                  child: Container(
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5,
                                                          vertical: 4),
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 5,
                                                                horizontal: 12),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            border: Border.all(
                                                                color: isSelected
                                                                    ? kActiveColor
                                                                    : const Color(
                                                                        0xffE0E0E0),
                                                                width: 1)),
                                                        child: Text(
                                                          hobby,
                                                          style: TextStyle(
                                                              color: isSelected
                                                                  ? kActiveColor
                                                                  : Colors
                                                                      .black,
                                                              fontSize: 14),
                                                        ),
                                                      )),
                                                );
                                              },
                                            ).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Container 9
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 20, bottom: 8.0, right: 8),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/images/Clock.png",
                                            height: 28,
                                            width: 28,
                                          )),
                                      const Expanded(
                                        flex: 10,
                                        child: Text(
                                          "Availability",
                                          style: TextStyle(
                                              fontFamily: 'workSans',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10, bottom: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Wrap(
                                            children: availabiltiy.map(
                                              (hobby) {
                                                bool isSelected = false;
                                                if (selectedAvailability!
                                                    .contains(hobby)) {
                                                  isSelected = true;
                                                }
                                                return GestureDetector(
                                                  onTap: () {
                                                    if (!selectedAvailability!
                                                        .contains(hobby)) {
                                                      if (selectedAvailability!
                                                              .length <
                                                          5) {
                                                        selectedAvailability!
                                                            .add(hobby);
                                                        setState(() {});
                                                        print(
                                                            selectedAvailability);
                                                      }
                                                    } else {
                                                      selectedAvailability!
                                                          .removeWhere(
                                                              (element) =>
                                                                  element ==
                                                                  hobby);
                                                      setState(() {});
                                                      print(
                                                          selectedAvailability);
                                                    }
                                                  },
                                                  child: Container(
                                                      margin: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5,
                                                          vertical: 4),
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 5,
                                                                horizontal: 12),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            border: Border.all(
                                                                color: isSelected
                                                                    ? kActiveColor
                                                                    : const Color(
                                                                        0xffE0E0E0),
                                                                width: 1)),
                                                        child: Text(
                                                          hobby,
                                                          style: TextStyle(
                                                              color: isSelected
                                                                  ? kActiveColor
                                                                  : Colors
                                                                      .black,
                                                              fontSize: 14),
                                                        ),
                                                      )),
                                                );
                                              },
                                            ).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),

              // Row Container - 2
              Expanded(
                  flex: 4,
                  child: Container(
                    color: const Color(0xffF8F9FA),
                    child: Column(
                      children: [
                        // Container 1
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 8, bottom: 8.0, right: 20),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Image.asset(
                                                "assets/images/Vector (3).png",
                                                height: 28,
                                                width: 28,
                                              )),
                                          const Expanded(
                                            flex: 10,
                                            child: Text(
                                              "Other Interests",
                                              style: TextStyle(
                                                  fontFamily: 'workSans',
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 20,
                                        bottom: 8.0,
                                        right: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10.0),
                                              child: Text(
                                                "Interested in Advisory Board Roles?",
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'workSans',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              selected = !selected;
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: selected
                                                      ? const Color(0xffEDE6F5)
                                                      : Colors.white,
                                                  border: Border.all(
                                                    width: 2,
                                                    color:
                                                        const Color(0xff6901AE),
                                                  )),
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: selected
                                                      ? Icon(
                                                          Icons.check,
                                                          size: 18.0,
                                                          color: kActiveColor,
                                                        )
                                                      : Container()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 20,
                                        bottom: 8.0,
                                        right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: const Text(
                                              "Interested in giving back to Not-For-Profits?",
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'workSans',
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 27.0),
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: 'workSans',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Container 2

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 8, bottom: 8.0, right: 20),
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0,
                                        right: 25,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Image.asset(
                                                "assets/images/Vector (4).png",
                                                height: 28,
                                                width: 28,
                                              )),
                                          const Expanded(
                                            flex: 10,
                                            child: Text(
                                              "Experience",
                                              style: TextStyle(
                                                  fontFamily: 'workSans',
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  // Experience Container
                                  const ExperienceContainer(),
                                  const ExperienceContainer(),
                                  const ExperienceContainer(),
                                  const ExperienceContainer(),
                                  const ExperienceContainer(),
                                  const ExperienceContainer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
