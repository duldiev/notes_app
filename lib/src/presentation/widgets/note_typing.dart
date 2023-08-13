import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:notes_app/src/presentation/blocs/note_bloc/note_bloc.dart';
import 'package:notes_app/src/presentation/widgets/note_item_style.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoteTyping extends StatefulWidget {
  const NoteTyping({super.key, required this.note});

  final Note? note;

  @override
  State<NoteTyping> createState() => _NoteTypingState();
}

class _NoteTypingState extends State<NoteTyping> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NoteItemStyle(
      template: true,
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: _controller,
              onChanged: (value) {
                context.read<NoteBloc>().add(
                      ChangeText(value),
                    );
                setState(() {});
              },
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 4.w,
                ),
                suffixIcon: InkWell(
                  onTap: () => context.read<NoteBloc>().add(
                        const AttachImage(),
                      ),
                  child: Icon(
                    FontAwesomeIcons.image,
                    color: AppColors.black,
                  ),
                ),
                border: InputBorder.none,
                hintText: "Start typing...",
                focusedBorder: _border(),
                enabledBorder: _border(),
                disabledBorder: _border(),
              ),
            ),
          ),
          _controller.text.isNotEmpty
              ? Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Gap(3.w),
                      InkWell(
                        onTap: () {
                          context.read<NoteBloc>().add(const Save(true));
                          _controller.text = '';
                          setState(() {});
                        },
                        child: Icon(
                          FontAwesomeIcons.arrowTurnUp,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  OutlineInputBorder _border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: AppColors.secondary,
          width: 0.5,
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
