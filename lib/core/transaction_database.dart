import 'package:money_tracker/core/models/transaction.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class TransactionFields{
  static const String id = '_id';
  static const String transactionType = 'transactionType';
  static const String title = 'title';
  static const String description = 'description';
  static const String amount = 'amount';
  static const String date = 'date';
}

class TransactionsDatabase{
  static final TransactionsDatabase instance = TransactionsDatabase._init();
  static Database? _database;
  String tableTransactions = 'transactions';


  TransactionsDatabase._init();

  Future<Database?> get database async{
    if(_database != null) return _database!;

    _database = await _initDB('transactions.db');
    return _database;
  }

  Future<Database> _initDB(String filePath) async{
    final dbPath = await getDatabasesPath();
    final path = join(dbPath,filePath);

    return await openDatabase(path,version: 1,onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async{
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';

    await db.execute('''
      CREATE TABLE $tableTransactions(
      ${TransactionFields.id} $idType,
      ${TransactionFields.transactionType} $textType,
      ${TransactionFields.title} $textType,
      ${TransactionFields.description} $textType,
      ${TransactionFields.amount} $textType,
      ${TransactionFields.date} $textType,
      )
    ''');

  }

  Future<MyTransaction> create({required MyTransaction transaction}) async{
    final db = await instance.database;
    final id = await db!.insert(tableTransactions, transaction.toJson());
    return transaction.copy(id:id);
  }

  Future close() async {
    final db = await instance.database;
    db!.close();
  }
}