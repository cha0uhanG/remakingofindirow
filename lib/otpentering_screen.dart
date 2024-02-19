import 'dart:async';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remakingofindigrow/API/api_calling.dart';
import 'package:remakingofindigrow/Controller/Signup_contoller.dart';
import 'package:remakingofindigrow/Home_page.dart';
import 'package:otp_timer_button/otp_timer_button.dart';


class Otpscreen extends StatefulWidget {
   Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  final TextEditingControllers controllers = Get.find();
  var OTP ;
  late Timer _timer ;
  int i = 30 ;

  @override
  void initState() {
   settime();
    super.initState();
  }


  void settime() {
   _timer= Timer.periodic(Duration(seconds:1), (timer) {
      if(i==0){
        timer.cancel();
      }else{
        setState(() {
          --i;
        });
      }
    });
  }
  @override
  void dispose() {
   _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Container(height: 150,child: Center(child: Image.asset("image/app_icon.png"))),),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height:220 ),
          Text("Please Enter OTP sent to:"),
              SizedBox(height:5 ,),
              Text("${controllers.mobileController.text}"),
            SizedBox(height:5 ,),
            Center(
              child: OtpTextField(
                numberOfFields: 4,
                borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
                showFieldAsBox: true,
              //runs when a code is typed in
                onCodeChanged: (String code) {

                  print("The otp is $OTP");
                  },

                onSubmit: (String verificationCode){
                  OTP = int.parse(verificationCode);
                  print("The otp is $OTP");
                  otpcheck( OTP,context);
                }, // end onSubmit
              ),
            ),
            SizedBox(height:5 ,),
            Row(children: [],),
            (i==0)?InkWell(onTap:(){setState(() {
              otpsend(controllers.mobileController.text);
              i=30; settime();
            });} ,child: Text("Resend SMS",style: TextStyle(
              color: Colors.green,
                decoration: TextDecoration.underline,
            ),)):Text("Resend SMS in $i"),
          ],
        ),
      ),
    );
  }
}

