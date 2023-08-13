import 'package:notes_app/src/domain/models/note.dart';

class NotesByDate {
  final List<Note> notes;
  final String dateTitle;

  NotesByDate({
    required this.notes,
    required this.dateTitle,
  });
}
