import 'package:diary/model/diary.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static late Database _database;
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();
  Future<Database> get database async {
    _database = await _initializeDb();
    return _database;
  }

  static const String _tableName = 'diaries';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'diary_db.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE $_tableName (
               id INTEGER PRIMARY KEY,
               title TEXT, description TEXT
             )''',
        );
      },
      version: 1,
    );

    return db;
  }

  Future<void> insertDiary(Diary diary) async {
    final Database db = await database;
    await db.insert(_tableName, diary.toMap());
    print('Data saved');
  }

  Future<List<Diary>> getDiary() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);

    return results.map((res) => Diary.fromMap(res)).toList();
  }

  Future<Diary> getDiaryById(int id) async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return results.map((res) => Diary.fromMap(res)).first;
  }

  Future<void> updateDiary(Diary diary) async {
    final db = await database;

    await db.update(
      _tableName,
      diary.toMap(),
      where: 'id = ?',
      whereArgs: [diary.id],
    );
  }

  Future<void> deleteDiary(int id) async {
    final db = await database;

    await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
