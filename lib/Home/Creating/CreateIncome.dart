import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Creating extends StatefulWidget {
  final String userID;

  Creating({Key? key, required this.userID}) : super(key: key);

  @override
  State<Creating> createState() => _CreatingState();
}

class _CreatingState extends State<Creating> {
  bool _showSpinner = false;
  final _textIncAmount = TextEditingController();

  bool _validateIncAmount = false;

  final _textIncDesc = TextEditingController();

  bool _validateIncDesc = false;

  String IncselectedValue = "Cash";
  List<String> IncdropdownItems = [
    'Cash',
    'Bank',
    'E-Money',
  ];

  String IncCatselectedValue = "Salary";
  List<String> IncCatdropdownItems = [
    'Salary',
    'Profit',
    "Allowance",
    "Bonus",
    "Other"
  ];
  String ExCatselectedValue = "Transport";
  List<String> ExCatdropdownItems = [
    'Transport',
    'Education',
    "Food",
    "Gym",
    "Clothes"
        'Tourism',
    "Other"
  ];
  @override
  Widget build(BuildContext context) {
    // print(userID + "home transdfjalsdfjdsf");
    return Scaffold(
      //backgroundColor: Color(0xff2A50BA),
      body: DefaultTabController(
        length: 3, // Number of tabs
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
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
                height: 60,
                width: 350,
                child: TabBar(
                  labelColor:
                      Color(0xff2A50BA), // Color of the selected tab label
                  unselectedLabelColor:
                      Color(0xff2A50BA), // Color of the unselected tab label
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
                  ModalProgressHUD(
                    inAsyncCall: _showSpinner,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 20),
                            // TextFormField(
                            //   keyboardType: TextInputType.datetime,
                            //   decoration: InputDecoration(
                            //     labelText: 'Date',
                            //     labelStyle: TextStyle(color: Color(0xff2A50BA)),
                            //   ),
                            //   style: TextStyle(color: Color(0xff2A50BA)),
                            // ),
                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _textIncAmount,
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                                errorText: _validateIncAmount
                                    ? 'Amount must not empty'
                                    : null,
                              ),
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            SizedBox(height: 10),
                            // TextFormField(
                            //   keyboardType: TextInputType.number,
                            //   decoration: InputDecoration(
                            //     labelText: 'Account',
                            //     labelStyle: TextStyle(color: Color(0xff2A50BA)),
                            //   ),
                            //   style: TextStyle(color: Color(0xff2A50BA)),
                            // ),
                            Text(
                              "Account",
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            DropdownButton<String>(
                              value: IncselectedValue,
                              hint: Text('Select an item'),
                              onChanged: (newValue) {
                                setState(() {
                                  IncselectedValue = newValue!;
                                });
                              },
                              items: IncdropdownItems.map<
                                  DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),

                            SizedBox(height: 10),
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //     labelText: 'Category',
                            //     labelStyle: TextStyle(color: Color(0xff2A50BA)),
                            //   ),
                            //   style: TextStyle(color: Color(0xff2A50BA)),
                            // ),
                            // SizedBox(height: 10),
                            // TextFormField(
                            //   decoration: InputDecoration(
                            //     labelText: 'Note',
                            //     labelStyle: TextStyle(color: Color(0xff2A50BA)),
                            //   ),
                            //   style: TextStyle(color: Color(0xff2A50BA)),
                            // ),

                            Text(
                              "Category",
                              style: TextStyle(color: Color(0xff2A50BA)),
                            ),
                            DropdownButton<String>(
                              value: IncCatselectedValue,
                              hint: Text('Select an item'),
                              onChanged: (newValue) {
                                setState(() {
                                  IncCatselectedValue = newValue!;
                                });
                              },
                              items: IncCatdropdownItems.map<
                                  DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),

                            SizedBox(height: 10),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _textIncDesc,
                              decoration: InputDecoration(
                                labelText: 'Description',
                                labelStyle: TextStyle(color: Color(0xff2A50BA)),
                                errorText: _validateIncDesc
                                    ? 'Description must not empty'
                                    : null,
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
                                    backgroundColor:
                                        Color.fromARGB(255, 66, 103, 203),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onPressed: () async {
                                  // Handle save button press
                                  _textIncAmount.text.isEmpty
                                      ? _validateIncAmount = true
                                      : _validateIncAmount = false;
                                  _textIncDesc.text.isEmpty
                                      ? _validateIncDesc = true
                                      : _validateIncDesc = false;

                                  setState(() {});
                                  // print("Income" + widget.userID);
                                  if (_textIncAmount.text.isNotEmpty &&
                                      _textIncDesc.text.isNotEmpty) {
                                    setState(() {
                                      _showSpinner = true;
                                    });
                                    // user = _textuser.text;
                                    // password = _textuserpass.text;
                                    // Api obj = Api();
                                    // dynamic result = await obj.checkuserLogin(
                                    //     user, password);
                                    // print(result.toString());
                                    // if (result['status']) {
                                    //   print(result['Message'][0]["userid"]);
                                    //   Get.to(() => BottomNav(
                                    //       userID: result['Message'][0]
                                    //           ["userid"]));
                                    //   setState(() {});
                                    //   _showSpinner = false;
                                    // } else {
                                    //   setState(() {});
                                    //   _showSpinner = false;
                                    //   Get.snackbar("Error",
                                    //       "Invalid username or Password",
                                    //       snackPosition: SnackPosition.TOP,
                                    //       backgroundColor: Colors.red,
                                    //       colorText: Colors.white);
                                    // }
                                  } else {
                                    //debugPrint('Invalid username or Password');
                                    setState(() {
                                      _showSpinner = false;
                                      //  Get.snackbar("Error", "Invalid username or Password", snackPosition: SnackPosition.TOP, backgroundColor: Colors.red,colorText: Colors.white);
                                    });
                                  }
                                },
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                            height: 55,
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      Color.fromARGB(255, 66, 103, 203),
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
                            height: 55,
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor:
                                      Color.fromARGB(255, 66, 103, 203),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
