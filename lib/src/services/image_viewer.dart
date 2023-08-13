import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/src/presentation/widgets/loader.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:photo_view/photo_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ImageViewer {
  static void showImageNetwork(
    BuildContext context,
    String image, [
    Key? key,
  ]) =>
      showDialog(
        context: context,
        useSafeArea: false,
        builder: (context) => Dialog.fullscreen(
          backgroundColor: AppColors.modalBackground,
          child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Hero(
                    tag: 'playerImageViewer$key',
                    child: PhotoView(
                      backgroundDecoration: BoxDecoration(
                        color: AppColors.transparent,
                      ),
                      loadingBuilder: (context, event) => const Loader(),
                      imageProvider: MemoryImage(base64Decode(image)),
                      onTapUp: (
                        _,
                        __,
                        ___,
                      ) =>
                          context.router.pop(),
                    ),
                  ),
                ),
                Positioned(
                  top: 4.w,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Transform.translate(
                      offset: Offset(-4.w, 0),
                      child: GestureDetector(
                        onTap: () => context.router.pop(),
                        child: Icon(
                          FontAwesomeIcons.xmark,
                          color: AppColors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
