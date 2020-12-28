import 'package:feedbackcollector/forgotpassword.dart';
import 'package:feedbackcollector/post_api.dart';
import 'package:feedbackcollector/signup.dart';
import 'package:flutter/material.dart';
import 'registration.dart';
import 'signup.dart';
import 'package:dio/dio.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retrofit Post Call"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            RaisedButton(child: Text("Fetch Post"),
                onPressed: () => {setState(() {
                  pressed = true;
                  //fetchData(postNum);
                })}),

            Padding(padding: EdgeInsets.all(30)),

            pressed ? _buildBody(context): SizedBox(),

          ],
        ),
      ),
    );
  }
}

FutureBuilder<Post> _buildBody(BuildContext context) {
  final client = RestClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<Post>(
    future: client.getTasks(2),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final Post posts = snapshot.data;
        return _buildPosts(context, posts);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget _buildPosts(BuildContext context, Post posts) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Text("Name : "+posts.name,style: TextStyle(fontSize: 30),),
        Text("Age : "+posts.age.toString(),style: TextStyle(fontSize: 30),),
      ],
    ),
  );

}