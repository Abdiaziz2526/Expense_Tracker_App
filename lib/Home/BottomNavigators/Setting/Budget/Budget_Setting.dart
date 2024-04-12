import 'package:expense_tracker/Home/BottomNavigators/Setting/Budget/addBudget.dart';
import 'package:flutter/material.dart';

class BudgetSett extends StatefulWidget {
  const BudgetSett({super.key});

  @override
  State<BudgetSett> createState() => _BudgetSettState();
}

class _BudgetSettState extends State<BudgetSett> {
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
              padding: const EdgeInsets.only(right: 245),
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
                      "Budget",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddBudget()));
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