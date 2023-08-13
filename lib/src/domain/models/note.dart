import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final int? id;
  final String text;
  final String? image;
  final DateTime createdAt;

  const Note({
    this.id,
    required this.text,
    this.image,
    required this.createdAt,
  });

  factory Note.empty([String text = '']) => Note(
        id: null,
        text: text,
        image: null,
        createdAt: DateTime.now(),
      );

  Note copyWith({
    int? id,
    String? text,
    String? image,
    DateTime? createdAt,
  }) {
    return Note(
      id: id ?? this.id,
      text: text ?? this.text,
      image: image ?? this.image,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
      'image': image,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'] as int,
      text: map['text'] as String,
      image: map['image'] as String?,
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }

  @override
  List<Object?> get props => [id, text, image, createdAt];
}
