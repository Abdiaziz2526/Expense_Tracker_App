import 'package:expense_tracker/Home/BottomNavigators/Setting/Income%20Category/Addincome.dart';
import 'package:flutter/material.dart';

class IncomeCategory extends StatefulWidget {
  const IncomeCategory({super.key});

  @override
  State<IncomeCategory> createState() => _IncomeCategoryState();
}

class _IncomeCategoryState extends State<IncomeCategory> {
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
      child: TextButton(onPressed: (){
        Navigator.pop(context);

      }, child:  Row(
        children: [
          Icon(Icons.arrow_back, color: Colors.white, size: 27,),
          SizedBox(width: 7,),
          Text("Income Category", style: TextStyle(
            fontSize: 20, color: Colors.white
          ),
          )
        ],
      ),
      ),
    ),
    IconButton(
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddIncome()));
    },
    icon: Icon(Icons.add, size: 27,),
  )

  ],
),

      ),
    );
  }
}