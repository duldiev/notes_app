import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/src/dependencies/injection.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/blocs/note_bloc/note_bloc.dart';
import 'package:notes_app/src/presentation/views/sliver_list_view.dart';
import 'package:notes_app/src/presentation/widgets/app_bar_button.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({
    super.key,
    required this.note,
    required this.callback,
  });

  final Note note;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteBloc>()..add(Create(note)),
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: _Body(note: note, callback: callback),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.note,
    required this.callback,
  });

  final Note note;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(
      builder: (context, state) {
        return SliverListView(
          title: const Text(''),
          pinned: false,
          stretch: true,
          floating: true,
          preferredSize: 0,
          expandedHeight: note.image != null ? 20.h : 0.h,
          actions: [
            AppBarButton(
              icon: FontAwesomeIcons.trash,
              iconColor: AppColors.danger,
              onPressed: () {
                context.router.pop();
                if (note.id != null) callback(note.id!);
              },
            ),
          ],
          flexibleSpace: note.image != null
              ? Container(
                  decoration: BoxDecoration(
                    color: AppColors.background,
                  ),
                  child: Image.memory(
                    base64Decode(note.image!),
                    fit: BoxFit.cover,
                  ),
                )
              : null,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: TextFormField(
              initialValue: note.text,
              cursorColor: AppColors.primary,
              style: TextStyleHelper.h3.copyWith(),
              onChanged: (value) {
                context.read<NoteBloc>().add(
                      ChangeText(value),
                    );
                context.read<NoteBloc>().add(
                      const Save(false),
                    );
              },
              textInputAction: TextInputAction.newline,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: '',
                border: InputBorder.none,
              ),
            ),
          ),
        );
      },
    );
  }
}
