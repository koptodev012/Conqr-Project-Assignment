
// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class PasswordTextField_widget extends StatefulWidget {
  const PasswordTextField_widget({super.key});

  @override
  State<PasswordTextField_widget> createState() =>
      _PasswordTextField_widgetState();
}

// ignore: camel_case_types
class _PasswordTextField_widgetState extends State<PasswordTextField_widget> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
