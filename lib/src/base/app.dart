import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:notes_app/src/services/app_router.dart';
import 'package:notes_app/src/shared/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.background,
            ),
            splashColor: Colors.transparent,
          ),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ru'),
          ],
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
