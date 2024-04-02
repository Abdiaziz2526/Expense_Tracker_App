

import 'package:expense_tracker/Forms/SignUp.dart';
import 'package:expense_tracker/Home/BottomNavigators/MainBottom.dart';
import 'package:flutter/material.dart';






class Loging extends StatelessWidget {
  const Loging({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 63, 38, 223),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xff2A50BA),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your Gmail',
                    hintStyle: TextStyle(color: const Color.fromARGB(179, 159, 157, 157)),
                    prefixIcon: Icon(Icons.email, 
                    color: Color(0xff2A50BA),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 23.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                     hintText: 'Enter your Password',
                    hintStyle: TextStyle(color: const Color.fromARGB(179, 159, 157, 157)),
                    prefixIcon: Icon(Icons.lock, 
                    color: Color(0xff2A50BA),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 24),
                Container(
                  height: 60, width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff2A50BA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                    },
                    child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you don\'t have an account",
                    style: TextStyle(fontSize: 17),
                    ),
                    TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

                    }, child: Text("Sign Up",
                    style: TextStyle(fontSize: 17),
                    ))
                    
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
