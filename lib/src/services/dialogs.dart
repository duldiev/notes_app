import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';

class Dialogs {
  static void showAlert(
    BuildContext context,
    String text,
    void Function() onTap, [
    Widget? content,
  ]) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(text),
        content: content,
        actions: [
          CupertinoActionSheetAction(
            onPressed: onTap,
            isDefaultAction: true,
            child: Text(
              'OK',
              style: TextStyleHelper.h6.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }

  static void showDeleteAlert(
    BuildContext context,
    Function() onAgreed,
    Function() onCancel,
  ) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Вы уверены, что хотите удалить?'),
          actions: [
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                context.router.pop();
                onCancel();
              },
              child: Text(
                'Отмена',
                style: TextStyleHelper.h6.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                context.router.pop();
                onAgreed();
              },
              child: Text(
                'Удалить',
                style: TextStyleHelper.h6.copyWith(
                  color: AppColors.danger,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
