import 'package:flutter/material.dart';

class StyleSett extends StatefulWidget {
  const StyleSett({super.key});

  @override
  State<StyleSett> createState() => _StyleSettState();
}

class _StyleSettState extends State<StyleSett> {
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
              padding: const EdgeInsets.only(right: 310),
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
                      "Style",
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