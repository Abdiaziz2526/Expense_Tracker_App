import 'package:expense_tracker/Home/BottomNavigators/Setting/Budget/Budget_Setting.dart';
import 'package:expense_tracker/Home/BottomNavigators/Setting/Expense%20Category/Expense_Category.dart';
import 'package:expense_tracker/Home/BottomNavigators/Setting/Income%20Category/Income_Cate.dart';
import 'package:expense_tracker/Home/BottomNavigators/Setting/Language/Language.dart';
import 'package:expense_tracker/Home/BottomNavigators/Setting/Style/Style.dart';
import 'package:flutter/material.dart';

class HomeMore extends StatefulWidget {
  const HomeMore({super.key});

  @override
  State<HomeMore> createState() => _HomeMoreState();
}

class _HomeMoreState extends State<HomeMore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff2A50BA),
          elevation: 0,
          title: Text("Setting"),
        ),
        body: Column(
          children: [  
            SizedBox(height: 15,),
           Container(
             child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>IncomeCategory()));
             }, 
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0
             ),
             child: Row(
              children: [
                SizedBox(width: 10,),
                Text("Income Category setting",
                style: TextStyle(
                  color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w400
                ),
                )
              ],
             )
             ),
           ),
           SizedBox(height: 6,),
           Container(
             child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpenseCategory()));
             }, 
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0
             ),
             child: Row(
              children: [
                SizedBox(width: 10,),
                Text("Expense Category setting",
                style: TextStyle(
                  color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w400
                ),
                )
              ],
             )
             ),
           ),
           SizedBox(height: 6,),
           Container(
             child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BudgetSett()));
             }, 
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0
             ),
             child: Row(
              children: [
                SizedBox(width: 10,),
                Text("Budget setting",
                style: TextStyle(
                  color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w400
                ),
                )
              ],
             )
             ),
           ),
           SizedBox(height: 6,),
           Container(
             child: ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Langauge()));

             }, 
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0
             ),
             child: Row(
              children: [
                SizedBox(width: 10,),
                Text("Language",
                style: TextStyle(
                  color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w400
                ),
                )
              ],
             )
             ),
           ),
            SizedBox(height: 6,),
           Container(
             child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StyleSett()));
             }, 
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0
             ),
             child: Row(
              children: [
                SizedBox(width: 10,),
                Text("Style",
                style: TextStyle(
                  color: Colors.grey, fontSize: 22, fontWeight: FontWeight.w400
                ),
                )
              ],
             )
             ),
           )

          ],
        
        ),
      ),
    );
  }
}