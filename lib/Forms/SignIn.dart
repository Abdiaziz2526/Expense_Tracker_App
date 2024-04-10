import 'package:expense_tracker/Forms/SignUp.dart';
import 'package:expense_tracker/Home/BottomNavigators/MainBottom.dart';
import 'package:expense_tracker/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Loging extends StatefulWidget {
  Loging({Key? key});

  @override
  State<Loging> createState() => _LogingState();
}

class _LogingState extends State<Loging> {
  bool _showSpinner = false;

  late String user, password;

  final _textuser = TextEditingController();

  bool _validateuser = false;

  final _textuserpass = TextEditingController();

  bool _validateuserpass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 63, 38, 223),
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: _showSpinner,
        child: Center(
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
                SizedBox(height: 23.0),
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
                Container(
                  height: 60,
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2A50BA),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      //starting login verification

                      _textuser.text.isEmpty
                          ? _validateuser = true
                          : _validateuser = false;
                      _textuserpass.text.isEmpty
                          ? _validateuserpass = true
                          : _validateuserpass = false;
                      setState(() {});
                      if (_textuser.text.isNotEmpty &&
                          _textuserpass.text.isNotEmpty) {
                        setState(() {
                          _showSpinner = true;
                        });
                        user = _textuser.text;
                        password = _textuserpass.text;
                        Api obj = Api();
                        dynamic result =
                            await obj.checkuserLogin(user, password);
                        print(result.toString());
                        if (result['status']) {
                           Get.to(() => BottomNav());
                           setState(() {});
                           _showSpinner = false;
                        } else {
                          setState(() {});
                          _showSpinner = false;
                          Get.snackbar("Error", "Invalid username or Password", snackPosition: SnackPosition.TOP, backgroundColor: Colors.red,colorText: Colors.white);
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
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you don\'t have an account",
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          "Sign Up",
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
