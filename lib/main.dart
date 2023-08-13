import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/src/base/app.dart';
import 'package:notes_app/src/dependencies/injection.dart';
import 'package:notes_app/src/services/bloc_observer.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();

  Bloc.observer = GlobalBlocObserver();

  Intl.defaultLocale = 'ru';

  await openDatabase(
    join(await getDatabasesPath(), 'notes.db'),
    onCreate: (db, _) {
      return db.execute(
        'CREATE TABLE note(id INTEGER PRIMARY KEY, text TEXT, image TEXT, createdAt TEXT)',
      );
    },
    version: 1,
  );

  runApp(App());
}
