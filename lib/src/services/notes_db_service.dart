import 'dart:developer';
import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:notes_app/src/domain/models/note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NotesDBService {
  static final NotesDBService _databaseHelper = NotesDBService._();

  NotesDBService._();

  late Database db;

  factory NotesDBService() => _databaseHelper;

  Future<void> initializeDB() async {
    String path = await getDatabasesPath();

    db = await openDatabase(
      join(path, 'notes2.db'),
      onCreate: (database, _) async {
        await database.execute(
          """CREATE TABLE Notes(
            id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
            text TEXT, 
            image TEXT, 
            createdAt TEXT)
          """,
        );
      },
      version: 1,
    );
  }

  Future<Either<Unit, Unit>> create(Note note) async {
    await initializeDB();
    log(note.toMap().toString());
    try {
      db.insert(
        'Notes',
        note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return const Right(unit);
    } catch (_) {
      return const Left(unit);
    }
  }

  Future<Either<String, List<Note>>> getList([String? orderBy]) async {
    await initializeDB();
    try {
      final List<Map<String, dynamic>> results = await db.query(
        'Notes',
        orderBy: orderBy,
      );
      return Right(results.map((e) => Note.fromMap(e)).toList());
    } catch (error) {
      return Left('Something wrong: $error');
    }
  }

  Future<bool> delete(int? id) async {
    await initializeDB();
    try {
      await db.delete(
        "Notes",
        where: "id = ?",
        whereArgs: [id.toString()],
      );
      return true;
    } catch (err) {
      log("Error on deleting a note: $err");
      return false;
    }
  }
}
