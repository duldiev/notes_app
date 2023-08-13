part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.create() = Create;
  const factory NoteEvent.changeText(String value) = ChangeText;
  const factory NoteEvent.attachImage() = AttachImage;
  const factory NoteEvent.save() = Save;
  const factory NoteEvent.delete(int? id) = Delete;
}
