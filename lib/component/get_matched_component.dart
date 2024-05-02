import 'package:conqr_assignment/common/variables.dart';
import 'package:flutter/material.dart';

class GetMatchedComponent extends StatefulWidget {
  const GetMatchedComponent({super.key});

  @override
  State<GetMatchedComponent> createState() => _GetMatchedComponentState();
}

class _GetMatchedComponentState extends State<GetMatchedComponent> {
  // --------------------------------------------
  var defaultChoiceIndex1;
  var defaultChoiceIndex2;
  var defaultChoiceIndex3;
  var defaultChoiceIndex4;

  final List<String> _choicesList1 = [
    'Hybrid',
    'Fully Remote',
    'Side Hustle',
    'On Site'
  ];
  final List<String> _choicesList2 = [
    'Full Time',
    '1-5 hrs',
    '5-10 hrs',
    '10-15 hrs',
    '15-20 hrs',
  ];
  final List<String> _choicesList3 = [
    '\$50k-\$100k',
    '\$100k-\$150k',
    '\$150k-\$250k',
    '\$250k-\$500k',
    '\$500k+'
  ];
  final List<String> _choicesList4 = [
    '\$50-100',
    '\$100-150',
    '\$150-250',
    '\$250-500',
    '\$500-1000'
  ];

  // ===========================================
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
        Padding(
          padding: const EdgeInsets.only(left: 150.0, right: 150),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
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
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15, left: 50, right: 50),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Rates & Availability",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Tell us how you would like to work? We'll factor this into our matching.",
                        style: TextStyle(fontSize: 17),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.work,
                        size: 18,
                      ),
                      Expanded(
                          flex: 10,
                          child: Text(
                            " Work Preference",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 15,
                            children:
                                List.generate(_choicesList1.length, (index) {
                              return ChoiceChip(
                                labelPadding: const EdgeInsets.all(2.0),
                                label: Text(
                                  _choicesList1[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Colors.black, fontSize: 14),
                                ),
                                selected: defaultChoiceIndex1 == index,
                                selectedColor: const Color(0xffF5F2F9),
                                onSelected: (value) {
                                  setState(() {
                                    defaultChoiceIndex1 =
                                        value ? index : defaultChoiceIndex1;
                                  });
                                },
                                elevation: 1,
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // -------------
                  const Row(
                    children: [
                      Icon(
                        Icons.lock_clock,
                        size: 18,
                      ),
                      Expanded(
                          flex: 10,
                          child: Text(
                            " Avaliability",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 15,
                            children:
                                List.generate(_choicesList2.length, (index) {
                              return ChoiceChip(
                                labelPadding: const EdgeInsets.all(2.0),
                                label: Text(
                                  _choicesList2[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Colors.black, fontSize: 14),
                                ),
                                selected: defaultChoiceIndex2 == index,
                                selectedColor: const Color(0xffF5F2F9),
                                onSelected: (value) {
                                  setState(() {
                                    defaultChoiceIndex2 =
                                        value ? index : defaultChoiceIndex2;
                                  });
                                },
                                elevation: 1,
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // --------------------
                  const Row(
                    children: [
                      Icon(
                        Icons.currency_rupee_sharp,
                        size: 18,
                      ),
                      Expanded(
                          flex: 10,
                          child: Text(
                            " Full Time Rate",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 15,
                            children:
                                List.generate(_choicesList3.length, (index) {
                              return ChoiceChip(
                                labelPadding: const EdgeInsets.all(2.0),
                                label: Text(
                                  _choicesList3[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Colors.black, fontSize: 14),
                                ),
                                selected: defaultChoiceIndex3 == index,
                                selectedColor: const Color(0xffF5F2F9),
                                onSelected: (value) {
                                  setState(() {
                                    defaultChoiceIndex3 =
                                        value ? index : defaultChoiceIndex3;
                                  });
                                },
                                elevation: 1,
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ---------------------
                  const Row(
                    children: [
                      Icon(
                        Icons.currency_rupee_sharp,
                        size: 18,
                      ),
                      Expanded(
                          flex: 10,
                          child: Text(
                            " Hourly Rate",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 15,
                            children:
                                List.generate(_choicesList4.length, (index) {
                              return ChoiceChip(
                                labelPadding: const EdgeInsets.all(2.0),
                                label: Text(
                                  _choicesList4[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Colors.black, fontSize: 14),
                                ),
                                selected: defaultChoiceIndex4 == index,
                                selectedColor: const Color(0xffF5F2F9),
                                onSelected: (value) {
                                  setState(() {
                                    defaultChoiceIndex4 =
                                        value ? index : defaultChoiceIndex4;
                                  });
                                },
                                elevation: 1,
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: Variables.isSelected1,
                        onChanged: (value) {
                          setState(() {
                            Variables.isSelected1 = value!;
                          });
                        },
                      ),
                      const Expanded(
                          flex: 10,
                          child: Text(
                            " Terms and Conditions Opt-in",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 36.0),
                        child: Text(
                          "By clicking I agree or continuing to use our services, you're opting in to Conqr's terms and conditions.",
                          style: TextStyle(fontSize: 14),
                        ),
                      ))
                    ],
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: Variables.isSelected2,
                        onChanged: (value) {
                          setState(() {
                            Variables.isSelected2 = value!;
                          });
                        },
                      ),
                      const Expanded(
                          flex: 10,
                          child: Text(
                            " Marketing Opt-in",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 36.0),
                        child: Text(
                          "As an Aussie company pushing new innovation, we would love to to keep you updated. By ticking this little box, you're giving us the permission to send you occasional product updates, marketing offers, and maybe even a sprinkle of humour now and then. Don't worry, we won't spam you – we're all about quality over quantity and you can opt out any time.",
                          style: TextStyle(fontSize: 14),
                        ),
                      ))
                    ],
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
