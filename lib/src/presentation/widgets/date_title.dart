import 'package:flutter/material.dart';

class DateTitle extends StatelessWidget {
  const DateTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 5),
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          wordSpacing: -0.5,
          letterSpacing: -0.5,
        ),
      ),
    );
  }
}
