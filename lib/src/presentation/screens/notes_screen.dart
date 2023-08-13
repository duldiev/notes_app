import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/core/extensions/ext_media_query.dart';
import 'package:notes_app/src/dependencies/injection.dart';
import 'package:notes_app/src/presentation/blocs/note_bloc/note_bloc.dart';
import 'package:notes_app/src/presentation/blocs/note_list_bloc/note_list_bloc.dart';
import 'package:notes_app/src/presentation/widgets/app_bar_widget.dart';
import 'package:notes_app/src/presentation/widgets/loader.dart';
import 'package:notes_app/src/presentation/widgets/note_item.dart';
import 'package:notes_app/src/presentation/widgets/note_typing.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NoteListBloc>()..add(const GetList()),
        ),
        BlocProvider(create: (context) => getIt<NoteBloc>()),
      ],
      child: Scaffold(
        appBar: const AppBarWidget(
          title: 'Заметки',
          hideBackButton: true,
          scrolledUnderElevation: 1,
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: _NoteListView(),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            top: 1.h,
            bottom: context.bottomViewInset + 1.h,
          ),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(16),
          ),
          child: BlocConsumer<NoteBloc, NoteState>(
            listener: (context, state) {
              if (state.success) {
                context.read<NoteListBloc>().add(const GetList());
              }
            },
            builder: (context, state) {
              return const SafeArea(child: NoteTyping());
            },
          ),
        ),
      ),
    );
  }
}

class _NoteListView extends StatelessWidget {
  const _NoteListView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.bottomViewInset + 2.h),
      child: BlocConsumer<NoteListBloc, NoteListState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Loader(),
            loaded: (notes) => notes.isNotEmpty
                ? Column(
                    children: List.generate(
                      notes.length,
                      (index) => NoteItem(
                        key: Key(index.toString()),
                        note: notes[index],
                      ),
                    ),
                  )
                : Container(
                    height: 70.h,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.noteSticky,
                          color: AppColors.secondary,
                          size: 14.w,
                        ),
                        Gap(2.h),
                        Text(
                          'Нет заметок',
                          style: TextStyleHelper.h4.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
            failed: (message) => Text(message),
          );
        },
      ),
    );
  }
}
