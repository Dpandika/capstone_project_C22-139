import 'package:diary/db/database_helper.dart';
import 'package:diary/model/diary.dart';
import 'package:flutter/material.dart';

class DatabaseProvider extends ChangeNotifier {
  List<Diary> _diaries = [];
  late DatabaseHelper _databaseHelper;

  List<Diary> get diaries => _diaries;

  DatabaseProvider() {
    _databaseHelper = DatabaseHelper();
    _getAllDiary();
  }

  void _getAllDiary() async {
    _diaries = await _databaseHelper.getDiary();
    notifyListeners();
  }

  Future<void> addDiary(Diary diary) async {
    await _databaseHelper.insertDiary(diary);
    _getAllDiary();
  }

  Future<Diary> getDiaryById(int id) async {
    return await _databaseHelper.getDiaryById(id);
  }

  void updateDiary(Diary diary) async {
    await _databaseHelper.updateDiary(diary);
  }

  void deleteDiary(int id) async {
    await _databaseHelper.deleteDiary(id);
    _getAllDiary();
  }
}
