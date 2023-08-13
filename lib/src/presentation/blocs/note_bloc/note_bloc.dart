import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/services/notes_db_service.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

@injectable
class NoteBloc extends Bloc<NoteEvent, NoteState> {
  late NotesDBService _database;

  NoteBloc() : super(NoteState()) {
    _database = NotesDBService();
    on<Create>(onCreate);
    on<ChangeText>(onChangeText);
    on<AttachImage>(onAttachImage);
    on<Save>(onSave);
    on<Delete>(onDelete);

    add(const Create());
  }

  void onCreate(
    Create event,
    Emitter<NoteState> emit,
  ) {
    log(event.note?.id.toString() ?? 'NULL');
    emit(state.copyWith(
      success: false,
      failed: false,
      loading: false,
      note: event.note ?? Note.empty(),
    ));
  }

  void onChangeText(
    ChangeText event,
    Emitter<NoteState> emit,
  ) =>
      emit(state.copyWith(
        note: state.note == null
            ? Note.empty(event.value.trim())
            : state.note?.copyWith(text: event.value.trim()),
      ));

  Future<void> onAttachImage(
    AttachImage event,
    Emitter<NoteState> emit,
  ) async {
    emit(state.copyWith(loading: true));

    XFile? imageFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    emit(state.copyWith(loading: false));

    if (imageFile != null) {
      String imageString = base64Encode(
        await imageFile.readAsBytes(),
      );
      emit(state.copyWith(
        note: state.note?.copyWith(image: imageString),
      ));
    }
  }

  Future<void> onSave(
    Save event,
    Emitter<NoteState> emit,
  ) async {
    if (state.note == null) return;
    if (state.note!.text.isEmpty) return;

    emit(state.copyWith(loading: true, success: false, failed: false));

    final result = await _database.create(state.note!);

    emit(state.copyWith(loading: false));

    result.fold(
      (l) => emit(state.copyWith(failed: true)),
      (r) => emit(state.copyWith(success: true)),
    );

    if (event.createNew) add(const Create());
  }

  Future<void> onDelete(
    Delete event,
    Emitter<NoteState> emit,
  ) async {
    if (state.note != null && state.note!.id != null && event.id == null) {
      return;
    }

    emit(state.copyWith(
      loading: true,
      success: false,
      failed: false,
    ));

    bool isDeleted = await _database.delete(state.note?.id ?? event.id!);

    emit(state.copyWith(loading: false));

    emit(isDeleted
        ? state.copyWith(success: true)
        : state.copyWith(failed: true));

    add(const Create());
  }
}
