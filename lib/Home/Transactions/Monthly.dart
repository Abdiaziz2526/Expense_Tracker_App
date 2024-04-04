import 'package:flutter/material.dart';

class MonthsTrans extends StatelessWidget {
  // Sample monthly expenses data (Replace this with data from the database backend)
  final Map<String, List<double>> monthlyExpenses = {
    'January': [200.0, 300.0, 250.0],
    'February': [150.0, 350.0, 200.0],
    'March': [300.0, 400.0, 200.0],
    'April': [300.0, 400.0, 200.0],
    'May': [300.0, 400.0, 200.0],
    'June': [300.0, 400.0, 200.0],
    'July': [300.0, 400.0, 200.0],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 16.0,
          headingRowHeight: 48.0,
          dataRowHeight: 56.0,
          columns: [
            DataColumn(label: Text('Month')),
            DataColumn(label: Text('Expense 1')),
            DataColumn(label: Text('Expense 2')),
            DataColumn(label: Text('Expense 3')),
            DataColumn(label: Text('Total Expense')),
          ],
          rows: monthlyExpenses.entries.map((entry) {
            final month = entry.key;
            final expenses = entry.value;
            final totalExpense = expenses.reduce((value, element) => value + element);
            return DataRow(
              cells: [
                DataCell(Text(month)),
                ...expenses.map((expense) => DataCell(Text('\$$expense'))),
                DataCell(Text('\$$totalExpense')),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
