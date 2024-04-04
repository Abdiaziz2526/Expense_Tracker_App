
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register Here!',
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
                      hintText: 'Enter your Name',
                      hintStyle: TextStyle(color: const Color.fromARGB(179, 159, 157, 157)),
                      prefixIcon: Icon(Icons.person, 
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
                  SizedBox(height: 24),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your Address',
                      hintStyle: TextStyle(color: const Color.fromARGB(179, 159, 157, 157)),
                      prefixIcon: Icon(Icons.home, 
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
                    height: 60, width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2A50BA),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {
                        // Add your login functionality here
                      },
                      child: Text('Sign Up',
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
                      Text("If you have an account",
                      style: TextStyle(fontSize: 17),
                      ),
                      TextButton(onPressed: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                       Navigator.pop(context);
                      }, child: Text("Sign in",
                      style: TextStyle(fontSize: 17),
                      ))
                      
                    ],
                  )
            
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}