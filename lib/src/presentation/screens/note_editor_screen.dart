import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/src/dependencies/injection.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/blocs/note_bloc/note_bloc.dart';
import 'package:notes_app/src/presentation/views/sliver_list_view.dart';
import 'package:notes_app/src/presentation/widgets/app_bar_button.dart';
import 'package:notes_app/src/services/app_router.gr.dart';
import 'package:notes_app/src/services/dialogs.dart';
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
  final Function(int?) callback;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteBloc>()..add(Create(note)),
      child: Scaffold(
        body: _Body(note: note, callback: callback),
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
  final Function(int?) callback;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteBloc, NoteState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            callback(null);
            return true;
          },
          child: SliverListView(
            title: state.note?.image == null && state.note?.createdAt != null
                ? Text(
                    DateFormat('dd MMMM yyyy\nhh:MM').format(
                      state.note!.createdAt,
                    ),
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  )
                : const Text(''),
            pinned: false,
            stretch: true,
            floating: true,
            preferredSize: 0,
            expandedHeight: state.note?.image != null ? 28.h : 0.h,
            actions: [
              AppBarButton(
                icon: FontAwesomeIcons.trash,
                iconColor: AppColors.danger,
                onPressed: () => Dialogs.showDeleteAlert(
                  context,
                  () {
                    context.router.popUntil(
                      (route) => route.settings.name == NotesRoute.name,
                    );
                    callback(state.note?.id);
                  },
                  () {},
                ),
              ),
            ],
            flexibleSpace: state.note?.image != null
                ? Container(
                    decoration: BoxDecoration(
                      color: AppColors.light,
                    ),
                    child: Image.memory(
                      base64Decode(state.note!.image!),
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
            bottom: note.image != null && state.note?.createdAt != null
                ? Container(
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: AppColors.light,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        DateFormat('dd MMMM yyyy\nhh:MM').format(
                          state.note!.createdAt,
                        ),
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : null,
            body: Container(
              height: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              color: AppColors.light,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: note.text,
                    cursorColor: AppColors.primary,
                    style: TextStyleHelper.h3.copyWith(),
                    onChanged: (value) {
                      context.read<NoteBloc>().add(
                            ChangeText(value),
                          );
                    },
                    onTapOutside: (_) => context.read<NoteBloc>().add(
                          const Save(false),
                        ),
                    textInputAction: TextInputAction.newline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: '',
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
