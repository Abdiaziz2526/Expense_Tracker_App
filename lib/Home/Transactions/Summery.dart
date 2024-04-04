import 'package:flutter/material.dart';

class SummeryPage extends StatelessWidget {
  const SummeryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Add summary cards here
            // Replace the static data below with data fetched from the database

            // Summary card for total expenses
            SummaryCard(
              title: 'Total Expenses',
              value: '\$500', // Replace this value with data from the database
            ),

            // Summary card for total income
            SummaryCard(
              title: 'Total Income',
              value: '\$1000', // Replace this value with data from the database
            ),
             SummaryCard(
              title: 'Total Expenses',
              value: '\$500', // Replace this value with data from the database
            ),

            // Summary card for total income
            SummaryCard(
              title: 'Total Income',
              value: '\$1000', // Replace this value with data from the database
            ),
             SummaryCard(
              title: 'Total Expenses',
              value: '\$500', // Replace this value with data from the database
            ),

            // Summary card for total income
            SummaryCard(
              title: 'Total Income',
              value: '\$1000', // Replace this value with data from the database
            ),

            // Add more summary cards as needed
          ],
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  final String title;
  final String value;

  const SummaryCard({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
