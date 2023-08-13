import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmptyNotesPlaceholder extends StatelessWidget {
  const EmptyNotesPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.noteSticky,
            color: AppColors.secondary,
            size: 14.w,
          ),
          Gap(2.h),
          Text(
            'Нет заметок',
            style: TextStyleHelper.h4.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.secondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
