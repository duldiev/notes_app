import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/views/sliver_list_view.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SliverListView(
          title: const Text(''),
          pinned: false,
          stretch: true,
          floating: true,
          expandedHeight: 28.h,
          body: Padding(
            padding: EdgeInsets.all(4.w),
            child: TextFormField(
              initialValue: note.text,
              cursorColor: AppColors.primary,
              style: TextStyleHelper.h3.copyWith(),
              decoration: const InputDecoration(
                hintText: '',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
