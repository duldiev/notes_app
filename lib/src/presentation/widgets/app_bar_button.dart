import 'package:flutter/material.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.iconSize,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.7,
      child: Container(
        margin: EdgeInsets.only(right: 2.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.light,
        ),
        padding: EdgeInsets.zero,
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: iconSize ?? 24,
            color: iconColor ?? AppColors.primary,
          ),
        ),
      ),
    );
  }
}
