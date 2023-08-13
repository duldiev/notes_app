part of 'note_list_bloc.dart';

@freezed
class NoteListState with _$NoteListState {
  const factory NoteListState.initial() = Initial;
  const factory NoteListState.loading() = Loading;
  const factory NoteListState.loaded(List<NotesByDate> notes) = Loaded;
  const factory NoteListState.failed(String message) = Failed;
}
