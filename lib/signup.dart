import 'package:feedbackcollector/login.dart';
import 'package:flutter/material.dart';
import 'registration.dart';

class Signup extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Signup> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          //   margin: EdgeInsets.only(left: 5, right: 5, top: 100),
          child: Column(
            children: <Widget>[
              Text(
                'Registration',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  // insert your font size here
                ),
              ),
              TextField(
                decoration:
                InputDecoration(hintText: 'Email'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,



                  // insert your font size here
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,

                  // insert your font size here
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,

                  // insert your font size here
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,

                  // insert your font size here
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password'),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,

                  // insert your font size here
                ),
              ),

              Container(
                margin: EdgeInsets.only(top:10.0),
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    home: Signup();
                    /*...*/
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10.0),
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));

                    /*...*/
                  },
                  child: Text(
                    "Do  have an account ?  Login",
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
