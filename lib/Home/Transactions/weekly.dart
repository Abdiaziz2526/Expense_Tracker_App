import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class WeeklyPage extends StatefulWidget {
  @override
  State<WeeklyPage> createState() => _WeeklyPageState();
}

class _WeeklyPageState extends State<WeeklyPage> {
  late List<double> weeklyExpenses;
  late double income;
  late double totalExpenses;

  @override
  void initState() {
    super.initState();
    // Initialize the weekly data
    generateWeeklyData();
    // Schedule updating the data every week
    const oneWeek = Duration(days: 7);
    Timer.periodic(oneWeek, (_) {
      generateWeeklyData();
    });
  }

  // Generate random income, expenses, and total expenses for the week
  void generateWeeklyData() {
    // Generate random expenses for each day of the week
    weeklyExpenses = List.generate(7, (_) => Random().nextInt(100).toDouble());
    // Calculate total expenses for the week
    totalExpenses = weeklyExpenses.fold(0, (prev, curr) => prev + curr);
    // Generate random income for the week
    income = Random().nextInt(1000).toDouble();
    // Update the UI to reflect changes
    setState(() {});
  }

  // Function to save weekly data to the database (Placeholder function)
  void saveWeeklyDataToDatabase() {
    // This function will be replaced with actual database operations
    // Example: Firestore.instance.collection('weekly_data').add({ 'income': income, 'expenses': totalExpenses });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display weekly expenses in a table
            DataTable(
              columns: [
                DataColumn(label: Text('Day')),
                DataColumn(label: Text('Expenses')),
              ],
              rows: weeklyExpenses.asMap().entries.map((entry) {
                final index = entry.key;
                final expense = entry.value;
                return DataRow(
                  cells: [
                    DataCell(Text('Day ${index + 1}')),
                    DataCell(Text('\$${expense.toStringAsFixed(2)}')),
                  ],
                );
              }).toList(),
            ),
            Divider(),
            // Display income and total expenses
            ListTile(
              title: Text('Income'),
              trailing: Text('\$${income.toStringAsFixed(2)}'),
            ),
            Divider(),
            ListTile(
              title: Text('Total Expenses'),
              trailing: Text('\$${totalExpenses.toStringAsFixed(2)}'),
            ),
          ],
        ),
      ),
      // Button to save weekly data to the database
      floatingActionButton: FloatingActionButton(
        onPressed: saveWeeklyDataToDatabase,
        child: Icon(Icons.save),
      ),
    );
  }
}
