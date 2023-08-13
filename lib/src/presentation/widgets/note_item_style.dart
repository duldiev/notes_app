import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoteItemStyle extends StatelessWidget {
  const NoteItemStyle({
    super.key,
    required this.template,
    required this.child,
  });

  final bool template;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 4.w,
        top: template ? 0 : 15,
        bottom: template ? 10 : 15,
        right: 4.w,
      ),
      child: child,
    );
  }
}
