part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  factory NoteState({
    @Default(null) Note? note,
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
  }) = _NoteState;
}
