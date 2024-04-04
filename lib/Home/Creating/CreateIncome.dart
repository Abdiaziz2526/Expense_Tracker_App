import 'package:flutter/material.dart';

void main() {
  runApp(Creating());
}

class Creating extends StatelessWidget {
  const Creating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xff2A50BA),
        body: DefaultTabController(
          length: 3, // Number of tabs
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Color(0xff2A50BA)),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle bookmark button press
                    },
                    icon: Icon(Icons.bookmark, color: Color(0xff2A50BA)),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff2A50BA), // Color of the bottom border
                      width: 2.0, // Thickness of the bottom border
                    ),
                  ),
                ),
                child: Container(
                  height: 60, width: 350,
                  child: TabBar(
                    labelColor: Color(0xff2A50BA), // Color of the selected tab label
                    unselectedLabelColor: Color(0xff2A50BA), // Color of the unselected tab label
                    indicator: BoxDecoration(
                      // Style of the indicator
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff2A50BA))
                      //color: Color.fromARGB(255, 66, 103, 203), // Color of the indicator
                    ),
                    tabs: [
                      Tab(text: 'Income'),
                      Tab(text: 'Expense'),
                      Tab(text: 'Transfer'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // Form for Income tab
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 20),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                labelText: 'Date',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Account',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Category',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Note',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Description',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 55, width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color.fromARGB(255, 66, 103, 203),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                onPressed: () {

                                  // Handle save button press
                                },
                                child: Text('Save', style: TextStyle(
                                  fontSize: 22
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Containers for Expense and Transfer tabs
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 20),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                labelText: 'Date',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Account',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Category',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Note',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Description',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 55, width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color.fromARGB(255, 66, 103, 203),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                onPressed: () {

                                  // Handle save button press
                                },
                                child: Text('Save', style: TextStyle(
                                  fontSize: 22
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Transfer
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 20),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                labelText: 'Date',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Account',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Category',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Note',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Description',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 55, width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color.fromARGB(255, 66, 103, 203),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                onPressed: () {

                                  // Handle save button press
                                },
                                child: Text('Save', style: TextStyle(
                                  fontSize: 22
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
