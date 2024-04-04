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
        appBar: AppBar(
          backgroundColor: Color(0xff2A50BA),
          elevation: 0,
          title: Text("Setting"),
        ),
        body: Column(
          children: [  
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.settings
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Configration", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
                 Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.account_balance_wallet
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Accounts", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
                 Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                   // border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.password
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("PassCode", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
               
               
              ],
            ),
            SizedBox(height: 12,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.style
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Style", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
                 Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.computer
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("PC manager", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
                 Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.backup
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Backup", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
               
               
              ],

            ),
            SizedBox(height: 12,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.feedback
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Feedback", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
                 Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                   // border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.help
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Help", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
                  ),
                ),
                 Container(
                  height: 95, width: 120,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xff2A50BA)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(onPressed: (){}, 
                  child: Column(
                    children: [
                      Icon(Icons.recommend
                      ,size: 30, color: Color(0xff2A50BA),
                      ),
                      SizedBox(height: 5,),
                      Text("Recomand", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400,
                        color: Color(0xff2A50BA)
                      ),),
                    ],
                  )
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