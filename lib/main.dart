import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/src/base/app.dart';
import 'package:notes_app/src/dependencies/injection.dart';
import 'package:notes_app/src/services/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  Bloc.observer = GlobalBlocObserver();

  Intl.defaultLocale = 'ru';

  runApp(App());
}
