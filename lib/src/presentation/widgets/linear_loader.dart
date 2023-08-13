import 'package:flutter/material.dart';
import 'package:notes_app/src/shared/app_colors.dart';

class LinearLoader extends StatelessWidget {
  const LinearLoader({
    super.key,
    this.height,
    this.color,
  });

  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: color ?? AppColors.primary,
      backgroundColor: AppColors.background,
      minHeight: height ?? 2,
    );
  }
}
