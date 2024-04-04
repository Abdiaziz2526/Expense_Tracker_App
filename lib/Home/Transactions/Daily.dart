import 'dart:math';

import 'package:flutter/material.dart';

class dailytrans extends StatefulWidget {
  const dailytrans({super.key});

  @override
  State<dailytrans> createState() => _dailytransState();
}

class _dailytransState extends State<dailytrans> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
      itemCount: 12, 
      itemBuilder: (context, index) {
        double dailyExpense = Random().nextInt(100).toDouble();
        return ListTile(
          title: Text('Day ${index + 1}'),
          subtitle: Text('Expenses: \$${dailyExpense.toStringAsFixed(2)}'),
        );
      },
    ),
      )
    );
  }
}