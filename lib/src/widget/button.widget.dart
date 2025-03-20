import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String route;
  final String text;

  const ButtonWidget({
    required this.route,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFAFAE24),
          minimumSize: Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          )),
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0xFF032C5F),
        ),
      ),
    );
  }
}
