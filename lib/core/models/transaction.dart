import 'package:money_tracker/core/transaction_database.dart';

class MyTransaction {
  final int? id;
  final String transactionType; //incomming,outgoing
  final String title;
  final String description;
  final String amount;
  final DateTime createdTime;

  MyTransaction({
    this.id,
    required this.transactionType,
    required this.title,
    required this.description,
    required this.amount,
    required this.createdTime,
  });

  MyTransaction copy({
    int? id,
    String? transactionType, //incomming,outgoing
    String? title,
    String? description,
    String? amount,
    DateTime? createdTime,
  }) =>
      MyTransaction(
        id: id ?? this.id,
        transactionType: transactionType ?? this.transactionType,
        title: title ?? this.title,
        description: description ?? this.description,
        amount: amount ?? this.amount,
        createdTime: createdTime ?? this.createdTime,
      );

  Map<String, Object?> toJson() => {
        TransactionFields.id: id,
        TransactionFields.transactionType: transactionType,
        TransactionFields.title: title,
        TransactionFields.description: description,
        TransactionFields.amount: amount,
        TransactionFields.date: createdTime.toIso8601String(),
      };
}
