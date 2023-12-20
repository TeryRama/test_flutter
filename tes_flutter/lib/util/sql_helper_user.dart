import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

String namaDB = "pegawai.db";
String namaTabel = "user";

class SqlHelperTimbangan {
  static Future<Database> _openDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, namaDB);
    return openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  static _createDatabase(Database db, int version) async {
    await db.execute("""CREATE TABLE IF NOT EXISTS $namaTabel(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          email TEXT,
          password TEXT,
          role TEXT);
          """);
  }

  static Future<bool> insertDataDB(
      String name, String email, String password, String role) async {
    final db = await _openDatabase();
    final data = {
      'name': name,
      'email': email,
      'password': password,
      'role': role,
    };
    await db.insert(namaTabel, data);

    return true;
  }

  static Future<List> getDataDB() async {
    final db = await _openDatabase();
    final result = await db.query(namaTabel, orderBy: 'date DESC');
    return (result);
  }

  static Future<bool> getDataWhereDB(String email, String password) async {
    final db = await _openDatabase();
    final result = await db.query(namaTabel,
        where: 'email = ? AND password = ?', whereArgs: [email, password]);

    if (result.isEmpty) {
      return false;
    }

    return (true);
  }

  static Future<void> deleteDataDB(String where) async {
    final db = await _openDatabase();
    await db.delete(namaTabel, where: 'crane = ?', whereArgs: [where]);
    // await db.rawUpdate("DELETE FROM sqlite_sequence WHERE name = '$namaTabel'");
  }
}
