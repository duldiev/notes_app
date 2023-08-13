import 'package:flutter/material.dart';
import 'package:notes_app/src/domain/models/notes_by_date.dart';
import 'package:notes_app/src/presentation/widgets/date_title.dart';
import 'package:notes_app/src/presentation/widgets/note_item.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key, required this.notesByDate});

  final NotesByDate notesByDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DateTitle(title: notesByDate.dateTitle),
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.light.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
            child: ListView.separated(
              itemCount: notesByDate.notes.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return NoteItem(
                  note: notesByDate.notes[index],
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 0, indent: 4.w);
              },
            ),
          ),
        ),
      ],
    );
  }
}
