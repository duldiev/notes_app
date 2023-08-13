import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/widgets/app_bar_widget.dart';

@RoutePage()
class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'Изменить'),
      body: Placeholder(),
    );
  }
}
