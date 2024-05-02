import 'dart:io';

import 'package:conqr_assignment/common/variables.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';

class MatchProfileComponent extends StatefulWidget {
  const MatchProfileComponent({super.key});

  @override
  State<MatchProfileComponent> createState() => _MatchProfileComponentState();
}

class _MatchProfileComponentState extends State<MatchProfileComponent> {
  // ------------------------------------------------------

  File? pickedImage;
  Uint8List webImage = Uint8List(8);
  Future<void> pickImager() async {
    if (!kIsWeb) {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        var selected = File(image.path);
        setState(() {
          pickedImage = selected;
        });
      } else {
        print("No Image has been picked!");
      }
    } else if (kIsWeb) {
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f;
          pickedImage = File('a');
        });
      } else {
        print("No Image has been picked!");
      }
    } else {
      print("Something went wrong..");
    }
  }

  // ======================================================
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
          padding: const EdgeInsets.only(right: 60.0,left: 60),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 20, left: 35, right: 35),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Container 1
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                children: [
                                  ClipOval(
                                    child: SizedBox.fromSize(
                                        size: const Size.fromRadius(
                                            48), // Image radius
                                        child: pickedImage == null
                                            ? Image.asset(
                                                'assets/images/73-730477_first-name-profile-image-placeholder-png.png',
                                                height: 100,
                                                width: 100,
                                                fit: BoxFit.cover)
                                            : kIsWeb
                                                ? Image.memory(webImage,
                                                    height: 100,
                                                    width: 100,
                                                    fit: BoxFit.cover)
                                                : Image.file(
                                                    pickedImage!,
                                                    height: 100,
                                                    width: 100,
                                                    fit: BoxFit.cover,
                                                  )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5.0, bottom: 5),
                                    child: OutlinedButton(
                                        onPressed: () {
                                          pickImager();
                                        },
                                        child:
                                            const Text("Add Profile Picture")),
                                  ),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: const Text("Create Video Intro")),
                                ],
                              ),
                            ),
                          )),
              
                      // Container 2
                      Expanded(
                          flex: 8,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Boosting Your Match Profile",
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "Add information to your profile to ensure our platform find your perfect match.",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Color.fromARGB(255, 69, 68, 68)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6.0, bottom: 6),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 250,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff0B66C3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images/linkedin.png",
                                                  height: 23,
                                                  width: 23,
                                                ),
                                                const Text(
                                                  "  Connect your LinkedIn",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Conqr will scan your Linkedin profile to boost your match information",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Color.fromARGB(255, 69, 68, 68)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
              
                  // --------------------------
              
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text("Tell Us About Yourself "),
                      ),
                      Expanded(
                          child: Text(
                        "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Form(
                      key: Variables.formKey1,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12, bottom: 12),
                                  child: TextFormField(
                                    controller: Variables.aboutController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return '';
                                      }
              
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none)),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0, right: 8, bottom: 8),
                                child: Text("200 Characters Only"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
              
                  // -----------------------
              
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/tray.and.arrow.up.png",
                                    height: 39,
                                    width: 39,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 8),
                                    child: OutlinedButton(
                                      onPressed: () async {
                                        // ..........................................
                                        print("hey....");
              
                                        final result = await FilePicker.platform
                                            .pickFiles();
              
                                        if (result == null) {
                                          return;
                                        } else {
                                          final file = result.files.first;
                                          openFile(file);
                                          print("Name: ${file.name}");
                                          print("Bytes: ${file.bytes}");
                                          print("Size: ${file.size}");
                                          print("Extension: ${file.extension}");
                                          print("Path: ${file.path}");
                                        }
              
                                        // ............................................
                                      },
                                      child: const Text("Upload Resume",
                                          style: TextStyle(
                                            color: Color(0xff5404A4),
                                          )),
                                    ),
                                  ),
                                  const Text(
                                    " Supported Formats: doc, docx, rtf, pdf, up to 5MB",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 69, 68, 68)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/tray.and.arrow.up.png",
                                    height: 39,
                                    width: 39,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 8),
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      child: const Text(
                                          "Upload Certification & Publications",
                                          style: TextStyle(
                                            color: Color(0xff5404A4),
                                          )),
                                    ),
                                  ),
                                  const Text(
                                    " Supported Formats: doc, docx, rtf, pdf, up to 5MB",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 69, 68, 68)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              
                  // ---------------
              
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                                "We’ll scan your CV for additional match boosting. If you don't have this handy, You can also add this later")),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                              "Show the world those great achievements! Certificates, industry publications and portfolios. We'll scan these too wherever possible to bolster your match strength!"),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
