import 'package:expense_tracker/Home/Creating/CreateIncome.dart';
import 'package:expense_tracker/Home/Transactions/Daily.dart';
import 'package:expense_tracker/Home/Transactions/Monthly.dart';
import 'package:expense_tracker/Home/Transactions/Summery.dart';
import 'package:expense_tracker/Home/Transactions/weekly.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  final String userID;

  HomeScreen({Key? key, required this.userID}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  // Placeholder variables for income and expenses
  double income = 1500.0;
  double expenses = 800.0;

  // Calculate total
  double get total => income - expenses;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Expense Tracker'),
            elevation: 0,
            backgroundColor: Color(0xff2A50BA),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight * 1.5),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(text: 'Daily'),
                      Tab(text: 'Monthly'),
                      Tab(
                          text:
                              'Weekly'), // Changed from 'Calendar' to 'Weekly'
                      Tab(text: 'Summary'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        child: Column(
                          children: [
                            Text(
                              'Income',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text('\$$income',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Expense',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('\$$expenses',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text('\$$total',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              // Daily Tab Content
              dailytrans(),
              // Monthly Tab Content
              MonthsTrans(),
              // Weekly Tab Content
              WeeklyPage(), // You need to create a WeeklyPage widget to display weekly transactions or summary
              // Summary Tab Content
              SummeryPage(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => Creating(userID: widget.userID));
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Creating()));
            },
            child: Icon(Icons.add),
            backgroundColor: Color(0xff2A50BA),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(String text) {
    return Center(child: Text(text));
  }
}
