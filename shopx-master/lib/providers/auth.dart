import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auths with ChangeNotifier {
  Future<void> signup(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDcy2NQ2n95oB0GuqunvDK2uradYxAOpiE");

    try{
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responData = json.decode(response.body);

      if(responData['error'] != null){
        throw responData['error']["message"];
      }
    } catch (error){
      throw error;
    }
  }

  Future<void> login(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDcy2NQ2n95oB0GuqunvDK2uradYxAOpiE");

    try{
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responData = json.decode(response.body);

      if(responData['error'] != null){
        throw responData['error']["message"];
      }
    } catch (error){
      throw error;
    }
  }
}