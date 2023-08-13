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
      (list) {
        List<NotesByDate> orderedNotes = _orderNotesByDate(list);
        emit(Loaded(orderedNotes));
      },
    );
  }

  List<NotesByDate> _orderNotesByDate(List<Note> notes) {
    List<NotesByDate> notesPerDay = [];
    notes
        .map((note) => DateFormat('d MMM').format(note.createdAt))
        .toSet()
        .forEach(
          (day) => notesPerDay.add(
            NotesByDate(
              dateTitle: day,
              notes: [],
            ),
          ),
        );
    for (var i = 0; i < notesPerDay.length; i++) {
      for (var j = 0; j < notes.length; j++) {
        final day = DateFormat('d MMM').format(notes[j].createdAt);
        if (notesPerDay[i].dateTitle == day) {
          notesPerDay[i].notes.add(notes[j]);
        }
      }
    }
    return notesPerDay;
  }
}
