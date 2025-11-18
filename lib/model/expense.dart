import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

//final formatter = DateFormat.yMd();
final formatter = DateFormat('dd MMMM yyyy');
final uuid = const Uuid();

enum Category { food, travel, leisure, work }

//map

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  //positional constructor
  //Expense(this.title, this.amount, this.date);

  //named constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}

//using positional constructor
//Expense expense1 = Expense("Lunch", 12.5, DateTime.now());
//using named constructor
//Expense expense2 = Expense(amount: 20.0, title: "Dinner", date: DateTime.now());
