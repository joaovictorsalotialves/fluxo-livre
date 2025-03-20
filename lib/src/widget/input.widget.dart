import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  const InputWidget({
    required this.icon,
    required this.hintText,
    required this.obscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Color(0xFFFFFFFF),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent),
        ),
      ),
      style: TextStyle(color: Color(0xFFFFFFFF)),
      obscureText: obscureText,
    );
  }
}
