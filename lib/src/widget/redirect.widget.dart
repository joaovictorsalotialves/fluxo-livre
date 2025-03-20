import 'package:flutter/material.dart';

class RedirectWidget extends StatelessWidget {
  final String route;
  final String text;

  const RedirectWidget({
    required this.route,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 20,
        ),
      ),
    );
  }
}
