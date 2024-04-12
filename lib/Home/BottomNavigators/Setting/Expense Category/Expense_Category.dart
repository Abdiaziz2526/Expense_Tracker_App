import 'package:expense_tracker/Home/BottomNavigators/Setting/Expense%20Category/AddExpense.dart';

import 'package:flutter/material.dart';

class ExpenseCategory extends StatefulWidget {
  const ExpenseCategory({super.key});

  @override
  State<ExpenseCategory> createState() => _IncomeCategoryState();
}

class _IncomeCategoryState extends State<ExpenseCategory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2A50BA),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 27,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Expense Category",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddExpense()));
              },
              icon: Icon(
                Icons.add,
                size: 27,
              ),
            )
          ],
        ),
      ),
    );
  }
}
