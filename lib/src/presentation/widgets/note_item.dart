import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/blocs/note_bloc/note_bloc.dart';
import 'package:notes_app/src/presentation/widgets/note_item_style.dart';
import 'package:notes_app/src/services/app_router.gr.dart';
import 'package:notes_app/src/shared/app_colors.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.router.push(
        NoteEditorRoute(note: note),
      ),
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(
          AppColors.primary.withOpacity(0.1),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        enableFeedback: true,
        side: MaterialStateProperty.all(BorderSide.none),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      child: Slidable(
        key: UniqueKey(),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.3,
          dismissible: DismissiblePane(
            onDismissed: () => context.read<NoteBloc>().add(
                  Delete(note.id),
                ),
          ),
          children: [
            SlidableAction(
              icon: FontAwesomeIcons.deleteLeft,
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              onPressed: (context) => context.read<NoteBloc>().add(
                    Delete(note.id),
                  ),
            ),
          ],
        ),
        child: NoteItemStyle(
          template: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    note.text,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  DateFormat(DateFormat.HOUR_MINUTE).format(
                    note.createdAt,
                  ),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
