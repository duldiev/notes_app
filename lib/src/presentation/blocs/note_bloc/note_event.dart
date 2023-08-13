part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.create([Note? note]) = Create;
  const factory NoteEvent.changeText(String value) = ChangeText;
  const factory NoteEvent.attachImage() = AttachImage;
  const factory NoteEvent.removeImage() = RemoveImage;
  const factory NoteEvent.save(bool createNew) = Save;
  const factory NoteEvent.delete(int? id) = Delete;
}
