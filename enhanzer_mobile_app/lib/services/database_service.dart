import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('userdata.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_code TEXT,
        user_display_name TEXT,
        email TEXT,
        user_employee_code TEXT,
        company_code TEXT
      )
    ''');
  }

  Future<void> insertUser(Map<String, dynamic> userData) async {
    final db = await instance.database;
    await db.insert('users', {
      'user_code': userData['User_Code'],
      'user_display_name': userData['User_Display_Name'],
      'email': userData['Email'],
      'user_employee_code': userData['User_Employee_Code'],
      'company_code': userData['Company_Code'],
    });
  }
}
