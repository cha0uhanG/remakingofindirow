
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:remakingofindigrow/Controller/Signup_contoller.dart';
import 'package:remakingofindigrow/Home_page.dart';
import 'package:remakingofindigrow/otpentering_screen.dart';

final TextEditingControllers controllers = Get.find();

late int? mobilenumber ;
void otpsend(String no) async{

  final String otpurl = 'https://indirow-development.racecondition.io/api/user/sendOtpToMobile?mobile=$no' ;
try {
final http.Response response = await http.get(Uri.parse(otpurl));       // Make the HTTP POST request
dynamic jjson = jsonDecode(response.body);
return(jjson["status"]);
} catch (error) {
print('Exception during POST request: $error');    // Exception handling
}

}

void otpcheck (int otpp ,  BuildContext context ) async{
  var number=controllers.mobileController.text;
  print("the otp is below");
  print(number);
  final String otpcheckurl = 'https://indirow-development.racecondition.io/api/user/signInWithOtp' ;
  var data = {
    'mobile': "$number",
    'otp':'$otpp',
    "device_type": "A",
    "device_token": "dummy"
  };
  try {
    final http.Response response = await http.post(Uri.parse(otpcheckurl), body: data);
    dynamic jjson = jsonDecode(response.body);// Make the HTTP POST request
    if (jjson["code"] == 200) {
      Navigator.push(context,  MaterialPageRoute(builder: (context) => Home()),);
    } else {
    print("Otp verification failed");
      // Show error message to the user
    }
    return(jjson["message"]);
  } catch (error) {
    print(error);
    print('Exception during POST request: $error');    // Exception handling
  }

}


// Now handle all the api using  dio_service.