import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/src/domain/models/note.dart';
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
      (list) => emit(Loaded(list)),
    );
  }
}
