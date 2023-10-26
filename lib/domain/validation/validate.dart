import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Validate {

  static final RegExp _emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  static bool isPasswordValid(String password, String reEnteredPassword) {
    if (password == '' || reEnteredPassword == '') {
      return false;
    }
    return password == reEnteredPassword;
  }

  static bool isEmailValid(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');

    return RegExp(r'^\d{10}$').hasMatch(digitsOnly);
  }

  static bool validate(String email, String password, String reEnteredPassword, String phoneNumber, String name, String address){
    if(!isPasswordValid(password, reEnteredPassword)) {
      Fluttertoast.showToast(
        msg: "Password dose not match.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    else if(!isEmailValid(email)) {
      Fluttertoast.showToast(
        msg: "Invalid email",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    else if(!isValidPhoneNumber(phoneNumber)) {
      Fluttertoast.showToast(
        msg: "Invalid phone number.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    else if(name == ''){
      Fluttertoast.showToast(
        msg: "Please enter your Name.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    else if(address == ''){
      Fluttertoast.showToast(
        msg: "Please enter an Address.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
    return true;
  }

}
