import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/blocs/note_bloc/note_bloc.dart';
import 'package:notes_app/src/presentation/widgets/note_item_style.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
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
          children: [
            SlidableAction(
              icon: CupertinoIcons.lock,
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              onPressed: (context) {},
            ),
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
