import 'package:flutter/material.dart';

class Langauge extends StatefulWidget {
  const Langauge({super.key});

  @override
  State<Langauge> createState() => _LangaugeState();
}

class _LangaugeState extends State<Langauge> {
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
              padding: const EdgeInsets.only(right: 270),
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
                      "Language",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
           
          ],

        ),
      ),
    );
  }
}