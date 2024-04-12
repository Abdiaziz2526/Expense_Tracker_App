import 'package:flutter/material.dart';

class AddIncome extends StatefulWidget {
  const AddIncome({super.key});

  @override
  State<AddIncome> createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {
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
      padding: const EdgeInsets.only(right: 250),
      child: TextButton(onPressed: (){
        Navigator.pop(context);

      }, child:  Row(
        children: [
          Icon(Icons.arrow_back, color: Colors.white, size: 27,),
          SizedBox(width: 7,),
          Text("Add income", style: TextStyle(
            fontSize: 20, color: Colors.white
          ),
          )
        ],
      ),
      ),
    ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Color(0xff2A50BA)),
              ),
              style: TextStyle(color: Color(0xff2A50BA)),
            ),
            SizedBox(height: 20),
            Container(
              height: 55,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Color.fromARGB(255, 66, 103, 203),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                  // Handle save button press
                },
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
