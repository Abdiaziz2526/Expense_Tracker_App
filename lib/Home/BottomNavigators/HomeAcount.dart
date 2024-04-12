import 'package:flutter/material.dart';

class HomeAccount extends StatefulWidget {
  const HomeAccount({super.key});

  @override
  State<HomeAccount> createState() => _HomeAccountState();
}

class _HomeAccountState extends State<HomeAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff2A50BA),
          title: Text("Accounts"),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 0,),
            Container(
              height: 80, width: 900,
              color: Color.fromARGB(255, 67, 106, 212),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Column(
                  children: [
                    SizedBox(height: 15,),
                     Text("Income", style: TextStyle(
                    fontSize: 23, color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                   Text("0.00", style: TextStyle(
                    fontSize: 18, color: Colors.white
                  ),
                  ),
                  ],
                 ),
                  Column(
                  children: [
                    SizedBox(height: 15,),
                     Text("Expense", style: TextStyle(
                    fontSize: 23, color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                   Text("0.00", style: TextStyle(
                    fontSize: 18, color: Colors.white
                  ),
                  ),
                  ],
                 ),
                  Column(
                  children: [
                    SizedBox(height: 15,),
                     Text("Total", style: TextStyle(
                    fontSize: 23, color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                   Text("0.00", style: TextStyle(
                    fontSize: 18, color: Colors.white
                  ),
                  ),
                  ],
                 ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                  margin: EdgeInsets.only(left: 18),
                   child: Text("Cash", style: TextStyle(
                    fontSize: 20,
                    ),
                    ),
                 ),
                 Container(
                  margin: EdgeInsets.only(right: 18),
                   child: Text("0.00", style: TextStyle(
                    fontSize: 20,
                    ),
                    ),
                 ),
              ],
            ),
            SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                  margin: EdgeInsets.only(left: 18),
                   child: Text("Accounts", style: TextStyle(
                    fontSize: 20,
                    ),
                    ),
                 ),
                 Container(
                  margin: EdgeInsets.only(right: 18),
                   child: Text("0.00", style: TextStyle(
                    fontSize: 20,
                    ),
                    ),
                 ),
              ],
            ),
            
           
         

          ],
        ),
      ),

    
    );
  }
}