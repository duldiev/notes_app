import 'package:flutter/material.dart';

class AppColors {
  static Color get background => const Color.fromARGB(255, 225, 224, 224);
  static Color get light => const Color.fromARGB(255, 198, 198, 198);
  static Color get white => Colors.white;
  static Color get secondary => const Color(0xFF686777);
  static Color get success => const Color(0xFF63B966);
  static Color get primary => const Color.fromARGB(255, 32, 56, 162);
  static Color get danger => const Color.fromARGB(255, 204, 0, 0);
  static Color get black => const Color.fromARGB(255, 0, 0, 0);
  static Color get transparent => Colors.transparent;
  static Color get modalBackground =>
      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.6);
}
