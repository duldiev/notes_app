import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/domain/models/notes_by_date.dart';
import 'package:notes_app/src/services/notes_db_service.dart';

part 'note_list_event.dart';
part 'note_list_state.dart';
part 'note_list_bloc.freezed.dart';

@injectable
class NoteListBloc extends Bloc<NoteListEvent, NoteListState> {
  late NotesDBService _database;

  NoteListBloc() : super(const Initial()) {
    _database = NotesDBService();
    on<GetList>(onGetList);
  }

  Future<void> onGetList(
    GetList event,
    Emitter<NoteListState> emit,
  ) async {
    emit(const Loading());

    final result = await _database.getList();

    result.fold(
      (failureMessage) => emit(Failed(failureMessage)),
      (list) => emit(Loaded(_orderNotesByDate(list))),
    );
  }

  List<NotesByDate> _orderNotesByDate(List<Note> notes) {
    log(notes.toString());
    List<NotesByDate> orderedNotes = [];
    notes
        .map((note) => DateFormat('d MMMM').format(note.createdAt))
        .toSet()
        .forEach(
          (day) => orderedNotes.add(
            NotesByDate(
              dateTitle: day,
              notes: [],
            ),
          ),
        );
    for (var i = 0; i < orderedNotes.length; i++) {
      for (var j = 0; j < notes.length; j++) {
        final day = DateFormat('d MMMM').format(notes[j].createdAt);
        if (orderedNotes[i].dateTitle == day) {
          orderedNotes[i].notes.add(notes[j]);
        }
      }
    }
    return orderedNotes;
  }
}
