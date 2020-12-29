
import 'dart:convert';

import 'package:feedbackcollector/apicall/demopostapi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Networkcall{
  
  



  Future<Album> createAlbum(String title) async {
    final http.Response response = await http.post(
      'https://jsonplaceholder.typicode.com/albums',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );

    if (response.statusCode == 201) {
      print("samir"+ response.body);
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }


}