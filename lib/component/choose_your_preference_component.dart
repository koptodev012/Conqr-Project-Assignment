import 'package:conqr_assignment/common/variables.dart';
import 'package:flutter/material.dart';

class ChooseYourPreferenceComponent extends StatefulWidget {
  const ChooseYourPreferenceComponent({super.key});

  @override
  State<ChooseYourPreferenceComponent> createState() =>
      _ChooseYourPreferenceComponentState();
}

class _ChooseYourPreferenceComponentState
    extends State<ChooseYourPreferenceComponent> {
  Color box1 = Colors.white;
  Color box2 = Colors.white;
  Color box3 = Colors.white;
  Color box4 = Colors.white;
  Color box5 = Colors.white;

  final myimages = [
    'assets/images/content.png',
    'assets/images/content (3).png',
    'assets/images/content (2).png',
    'assets/images/content (3).png',
    'assets/images/content (4).png',
  ];

  var id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: Variables.stepperBackIndex,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
              ),
              Expanded(flex: 10, child: Text("Back"))
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                color: Colors.grey,
                spreadRadius: 1,
              ),
            ],
          ),
          width: 750,
          child: Container(
            width: 500,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Personalise your experience",
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                              "We use 200 data points of AI to immediately match you to jobs.",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Text("What would you like to do in Conqr?",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Text("You can select multiple",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10),
                        itemCount: myimages.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                id = index;
                              });
                            },
                            child: Container(
                              height: 700,
                              decoration: BoxDecoration(
                                color: id == index
                                    ? const Color(0xffF5F2F9)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Image.asset(
                                      myimages[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
