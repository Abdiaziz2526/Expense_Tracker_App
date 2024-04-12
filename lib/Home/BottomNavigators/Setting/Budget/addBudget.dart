import 'package:flutter/material.dart';

class AddBudget extends StatefulWidget {
  const AddBudget({super.key});

  @override
  State<AddBudget> createState() => _AddBudgetState();
}

class _AddBudgetState extends State<AddBudget> {
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
                      " Add Budget",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],

        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Category',
                  labelStyle: TextStyle(color: Color(0xff2A50BA)),
                ),
                style: TextStyle(color: Color(0xff2A50BA)),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Account',
                  labelStyle: TextStyle(color: Color(0xff2A50BA)),
                ),
                style: TextStyle(color: Color(0xff2A50BA)),
              ),
              SizedBox(height: 10),
             
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
      ),
    );
  }
}
