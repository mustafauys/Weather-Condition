import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  static DatabaseHelper _databaseHelper;
  static Database _database;

  factory DatabaseHelper() {

    if(_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._internal();
      return _databaseHelper;
    } else {
      return _databaseHelper;
    }
  }
    DatabaseHelper._internal();

    Future<Database> _getDatabase() async{

      if(_database == null) {
        _database = await _initializeDatabase();
        return _database;
      } else {
        return _database;
      }
    }
    _initializeDatabase() async {

    }


}