import 'package:flutter/material.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Loader extends StatelessWidget {
  const Loader({
    super.key,
    this.value,
    this.onDark = true,
    this.height,
    this.strokeWidth = 4,
    this.loaderSize,
    this.color,
  });

  final double? value;
  final bool onDark;
  final double? height;
  final double? loaderSize;
  final double strokeWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 70.h,
      width: 100.w,
      child: SizedBox(
        height: loaderSize ?? 4.h,
        width: loaderSize ?? 4.h,
        child: Center(
          child: CircularProgressIndicator(
            value: value,
            strokeWidth: strokeWidth,
            color: color ?? (onDark ? AppColors.white : AppColors.black),
          ),
        ),
      ),
    );
  }
}
