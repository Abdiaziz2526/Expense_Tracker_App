import 'package:expense_tracker/Forms/SignIn.dart';
import 'package:expense_tracker/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showSpinner = false;

  final _textFullName = TextEditingController();

  bool _validateFullName = false;

  final _textuser = TextEditingController();

  bool _validateuser = false;

  final _textuserpass = TextEditingController();

  bool _validateuserpass = false;

  final _textuserAddr = TextEditingController();

  bool _validateuserAddr = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: _showSpinner,
        child: Center(
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
                    controller: _textFullName,
                    decoration: InputDecoration(
                      hintText: 'Enter your Name',
                      errorText:
                          _validateFullName ? 'Full name must not empty' : null,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(179, 159, 157, 157)),
                      prefixIcon: Icon(
                        Icons.person,
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
                    keyboardType: TextInputType.emailAddress,
                    controller: _textuser,
                    decoration: InputDecoration(
                      hintText: 'Enter your Gmail',
                      errorText: _validateuser ? 'Email must not empty' : null,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(179, 159, 157, 157)),
                      prefixIcon: Icon(
                        Icons.email,
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
                    obscureText: true,
                    controller: _textuserpass,
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      errorText:
                          _validateuserpass ? 'Password must not empty' : null,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(179, 159, 157, 157)),
                      prefixIcon: Icon(
                        Icons.lock,
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
                    keyboardType: TextInputType.streetAddress,
                    controller: _textuserAddr,
                    decoration: InputDecoration(
                      hintText: 'Enter your Address',
                      errorText:
                          _validateuserAddr ? 'Address must not empty' : null,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(179, 159, 157, 157)),
                      prefixIcon: Icon(
                        Icons.home,
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
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2A50BA),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () async {
                        // Add your login functionality here
                        _textFullName.text.isEmpty
                            ? _validateFullName = true
                            : _validateFullName = false;
                        _textuser.text.isEmpty
                            ? _validateuser = true
                            : _validateuser = false;
                        _textuserpass.text.isEmpty
                            ? _validateuserpass = true
                            : _validateuserpass = false;
                        _textuserAddr.text.isEmpty
                            ? _validateuserAddr = true
                            : _validateuserAddr = false;
                        setState(() {});
                        if (_textuser.text.isNotEmpty &&
                          _textuserpass.text.isNotEmpty) {
                        setState(() {
                          _showSpinner = true;
                        });
                        Api obj = Api();
                        dynamic result =
                            await obj.registerUser(_textFullName.text, _textuser.text, _textuserpass.text, _textuserAddr.text);
                        print(result.toString());
                        if (result['status']) {
                           Get.to(() => Loging());
                           setState(() {});
                           _showSpinner = false;
                           _textFullName.clear();
                        _textuser.clear();
                        _textuserpass.clear();
                        _textuserAddr.clear();
                        } else {
                          setState(() {});
                          _showSpinner = false;
                          Get.snackbar("Error", "Username or Email is Already exist", snackPosition: SnackPosition.TOP, backgroundColor: Colors.red,colorText: Colors.white);
                        }
                      } else {
                        //debugPrint('Invalid username or Password');
                        setState(() {
                          _showSpinner = false;
                        //  Get.snackbar("Error", "Invalid username or Password", snackPosition: SnackPosition.TOP, backgroundColor: Colors.red,colorText: Colors.white);
                        });
                      }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you have an account",
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign in",
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
