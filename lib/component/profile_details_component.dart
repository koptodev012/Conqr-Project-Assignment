import 'package:conqr_assignment/common/variables.dart';
import 'package:conqr_assignment/widget/textField.dart';
import 'package:flutter/material.dart';

class UserTypeComponent extends StatefulWidget {
  const UserTypeComponent({super.key});

  @override
  State<UserTypeComponent> createState() => _UserTypeComponentState();
}

class _UserTypeComponentState extends State<UserTypeComponent> {
  bool _passwordVisible = false;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    Variables.newPasswordController.dispose();
    Variables.confirmPasswordController.dispose();
    stateController.dispose();

    super.dispose();
  }

  final List<String> _locations = [
    'Please select',
    'India',
    'Pakistan',
    'England',
    'South Africa'
  ]; // Option 2

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
            padding: const EdgeInsets.only(top: 2.0),
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
                    left: 25, right: 25, top: 25, bottom: 30),
                child: Form(
                  key: Variables.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Profile Details",
                        style: TextStyle(fontSize: 28),
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "First Name",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "Last Name",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextFormField(
                                controller: firstNameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'First name is required';
                                  }
                                  if (value.contains(RegExp(
                                      r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]'))) {
                                    return "Invalid First name";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextFormField(
                                controller: lastNameController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Last name is required';
                                  }
                                  if (value.contains(RegExp(
                                      r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]'))) {
                                    return "Invalid Last name";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Email is required';
                                  }
                                  if (!value.contains(RegExp(
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'))) {
                                    return "Invalid Email Address";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "Create New Password",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "Confirm New Password",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextFormField(
                                controller: Variables.newPasswordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Password is required";
                                  }
                                  // Perform custom password validation here
                                  if (value.length < 8) {
                                    return "Password must be at least 8 characters long";
                                  }
                                  if (!value.contains(RegExp(r'[A-Z]'))) {
                                    return "Password must contain at least one uppercase letter";
                                  }
                                  if (!value.contains(RegExp(r'[a-z]'))) {
                                    return "Password must contain at least one lowercase letter";
                                  }
                                  if (!value.contains(RegExp(r'[0-9]'))) {
                                    return "Password must contain at least one numeric character";
                                  }
                                  if (!value.contains(
                                      RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
                                    return "Password must contain at least one special character";
                                  }

                                  return null; // Password is valid.
                                },
                                keyboardType: TextInputType.text,
                                obscureText: !_passwordVisible,
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextFormField(
                                controller: Variables.confirmPasswordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Password is required";
                                  }
                                  // Perform custom password validation here
                                  if (value.length < 8) {
                                    return "Password must be at least 8 characters long";
                                  }
                                  if (!value.contains(RegExp(r'[A-Z]'))) {
                                    return "Password must contain at least one uppercase letter";
                                  }
                                  if (!value.contains(RegExp(r'[a-z]'))) {
                                    return "Password must contain at least one lowercase letter";
                                  }
                                  if (!value.contains(RegExp(r'[0-9]'))) {
                                    return "Password must contain at least one numeric character";
                                  }
                                  if (!value.contains(
                                      RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
                                    return "Password must contain at least one special character";
                                  }

                                  return null; // Password is valid.
                                },
                                keyboardType: TextInputType.text,
                                obscureText: !_passwordVisible,
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "State",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "Country",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextFormField(
                                controller: stateController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'State is required';
                                  }
                                  if (value.contains(RegExp(
                                      r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]'))) {
                                    return "Invalid State name";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12)),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorStyle:
                                      const TextStyle(color: Colors.red),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 1),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 50,
                                child: DropdownButtonFormField(
                                  validator: (value) {
                                    if (value == "Please select") {
                                      return "This field is required";
                                    }
                                    return null;
                                  },
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(color: Colors.red),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorStyle:
                                        const TextStyle(color: Colors.red),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                  ),
                                  hint: const Text(
                                      'Please choose a location'), // Not necessary for Option 1
                                  value: Variables.selectedLocation,
                                  onChanged: (newValue) {
                                    setState(() {
                                      Variables.selectedLocation = newValue!;
                                      return;
                                    });
                                  },
                                  items: _locations.map((location) {
                                    return DropdownMenuItem(
                                      value: location,
                                      child: Text(location),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "Do you have a referral code?",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: TextFieldWidget()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
