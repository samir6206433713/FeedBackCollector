import 'package:feedbackcollector/forgotpassword.dart';
import 'package:feedbackcollector/signup.dart';
import 'package:flutter/material.dart';
import 'registration.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          //   margin: EdgeInsets.only(left: 5, right: 5, top: 100),
          child: Column(
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  // insert your font size here
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,

                  // insert your font size here
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,

                  // insert your font size here
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),

                child: InkWell(

                  onTap: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgotPassword()));
                  //  print("Click event on Container");
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // insert your font size here
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    home:
                    Login();
                    /*...*/
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                    /*...*/
                  },
                  child: Text(
                    "Do not have an account ?  signup",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
