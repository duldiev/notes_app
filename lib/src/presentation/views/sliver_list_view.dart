import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:notes_app/src/shared/text_style_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SliverListView extends StatelessWidget {
  const SliverListView({
    super.key,
    required this.title,
    this.onRefresh,
    this.leading,
    this.flexibleSpace,
    this.bottom,
    required this.body,
    this.expandedHeight,
    this.preferredSize,
    this.hideBackButton = false,
    this.actions,
    this.stretch = false,
    this.floating = false,
    this.pinned = true,
    this.snap = false,
    this.centerTitle = true,
    this.collapsedHeight,
    this.leadingWidth,
    this.blur = true,
    this.scrolledUnderElevation,
  });

  final Future<void> Function(
    BuildContext context,
  )? onRefresh;

  final Widget? leading;
  final Widget? flexibleSpace;
  final Widget? bottom;
  final Widget body;
  final Widget? title;
  final double? expandedHeight;
  final double? preferredSize;
  final bool hideBackButton;
  final List<Widget>? actions;
  final bool stretch;
  final bool floating;
  final bool pinned;
  final bool snap;
  final bool centerTitle;
  final double? collapsedHeight;
  final double? leadingWidth;
  final bool blur;
  final double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        title != null
            ? SliverAppBar(
                centerTitle: centerTitle,
                automaticallyImplyLeading: false,
                elevation: 0,
                pinned: pinned,
                snap: snap,
                stretch: stretch,
                floating: floating,
                expandedHeight: expandedHeight ?? 20.h,
                scrolledUnderElevation: scrolledUnderElevation ?? 0.8,
                title: title,
                backgroundColor: AppColors.background,
                titleTextStyle: TextStyleHelper.h4.copyWith(
                  color: AppColors.background,
                  fontSize: 14,
                ),
                collapsedHeight: collapsedHeight,
                actions: actions,
                leadingWidth: leadingWidth ?? 10.w,
                leading: leading ??
                    (!hideBackButton
                        ? GestureDetector(
                            onTap: () => context.router.pop(),
                            child: Transform.scale(
                              scale: 0.8,
                              origin: Offset(8.w, 0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  FontAwesomeIcons.arrowLeft,
                                  color: AppColors.black,
                                  size: 22,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox()),
                flexibleSpace: FlexibleSpaceBar(
                  background: flexibleSpace,
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(preferredSize ?? 6.h),
                  child: bottom ?? const SizedBox(),
                ),
              )
            : const SliverToBoxAdapter(),
        SliverToBoxAdapter(child: body),
      ],
    );
  }
}
