import 'package:flutter/material.dart';

class Variables {
  static int profileTypeCount = 0;
  static final formKey = GlobalKey<FormState>(); // Profile Details
  static String selectedLocation = "Please select";

  static TextEditingController newPasswordController = TextEditingController();
  static TextEditingController confirmPasswordController =
      TextEditingController();

  static final formKey1 = GlobalKey<FormState>(); // Match Profile
  static TextEditingController aboutController = TextEditingController();

// Get Matched Page
  static bool isSelected1 = false;
  static bool isSelected2 = false;

  static var stepperBackIndex;
}
