import 'dart:async';
import 'package:projeto_final_flutter/data/tesk_dao.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatatabase() async {
  final String path = join(await getDatabasesPath(), 'tesk.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(TaskDao.tebleSql);
    },
    version: 1,
  );
}
