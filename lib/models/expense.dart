// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work, others }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.airplane_ticket,
  Category.leisure: Icons.sports_baseball,
  Category.work: Icons.work,
  Category.others: Icons.more_horiz
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formarttedDate {
    return date.toString();
  } 
}
