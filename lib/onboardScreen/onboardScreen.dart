import 'package:expense_tracker/Forms/SignIn.dart';
import 'package:flutter/material.dart';

class OnboardingContent {
  final String imagePath;
  final String title;
  final String description;

  OnboardingContent({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int _currentPageIndex = 0;

  List<OnboardingContent> contents = [
    OnboardingContent(
      imagePath: 'asset/last-01.png',
      title: 'Had iyo jeer Gacanta ku hay',
      description: 'dhaqaalahaaga',
    ),
    OnboardingContent(
      imagePath: 'asset/two-01.png',
      title: 'Had iyo jeer Gacanta ku hay',
      description: 'dhaqaalahaaga',
    ),
    OnboardingContent(
      imagePath: 'asset/three-01.png',
      title: 'Had iyo jeer Gacanta ku hay',
      description: 'dhaqaalahaaga',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              itemCount: contents.length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 85),
                      Image.asset(
                        contents[i].imagePath,
                        height: 300,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        contents[i].description,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 250),
                      Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              height: 12,
                              width: _currentPageIndex == index ? 36 : 12,
                              decoration: BoxDecoration(
                                color: _currentPageIndex == index
                                    ? Color(0xff2A50BA)
                                    : Color(0xffD0D0D0),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 260,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Loging()));
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xff2A50BA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            "Bilow",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
