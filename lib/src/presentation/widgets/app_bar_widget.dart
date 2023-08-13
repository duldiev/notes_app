import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.leading,
    this.onBack,
    this.hideBackButton = false,
    this.actions,
    this.backgroundColor,
    this.scrolledUnderElevation,
    this.centerTitle = true,
    this.leadingWidth,
    this.preferredHeight,
  });

  final String title;
  final VoidCallback? onBack;
  final bool hideBackButton;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double? scrolledUnderElevation;
  final bool centerTitle;
  final Widget? leading;
  final double? leadingWidth;
  final double? preferredHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyleHelper.h4.copyWith(fontSize: 16),
      ),
      backgroundColor: backgroundColor ?? AppColors.background,
      foregroundColor: AppColors.black,
      elevation: 0,
      scrolledUnderElevation: scrolledUnderElevation ?? 1,
      titleTextStyle: TextStyleHelper.h4.copyWith(
        color: AppColors.background,
        fontSize: 16,
      ),
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      actions: actions,
      leadingWidth: leadingWidth,
      leading: !hideBackButton
          ? (leading ??
              IconButton(
                onPressed: () {
                  context.router.pop();
                  if (onBack != null) {
                    onBack!();
                  }
                },
                icon: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: AppColors.black,
                  size: 18,
                ),
              ))
          : const SizedBox(),
    );
  }

  @override
  Size get preferredSize => preferredHeight != null
      ? Size(100.w, preferredHeight!)
      : AppBar().preferredSize;
}
