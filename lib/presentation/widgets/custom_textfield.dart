import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const CustomTextFormField(
      {super.key,
      required this.title,
      required this.hintText,
      required this.obscureText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: const TextStyle(color: Colors.white),
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: icon,
            ),
          ),
        ),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
