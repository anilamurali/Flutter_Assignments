import 'package:sqflite/sqflite.dart' as sql;
class SQLHelper{
  //Create  Database
  static Future<sql.Database> OpenDb() async{
    return sql.openDatabase(
      'datauser',
      version: 1,
      onCreate: (sql.Database db ,int vertion) async{
        await createTable(db);
      }
    );
  }
//create table
  static Future<void> createTable(sql.Database db) async {
    await  db.execute("""CREATE TABLE user(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       email TEXT,
       password TEXT
      )""");
  }

  static Future<int> AddNewUser(String name, String email, String password) async {
    final db=await SQLHelper.OpenDb();
    final data ={'name':name,'email':email,'password':password};
    final id=db.insert('user', data);
    return id;
  }

  static Future<List<Map>> CheckLogin(String email, String pasword) async {
    final db=await SQLHelper.OpenDb();
    final data=await db.rawQuery(
        "SELECT * FROM user WHERE email= '$email' AND password = '$pasword'"
    );
    if (data.isNotEmpty) {
      return data;
    }
    return data;

  }
  static Future<List<Map>> getAll()async {
    final db = await SQLHelper.OpenDb();
    final data = db.rawQuery("SELECT * FROM user");
    return data;
  }

  static Future<void> DeleteUser(int id) async {
    final db=await SQLHelper.OpenDb();
    db.delete('user', where: 'id = ?', whereArgs: [id]);
  }


}

