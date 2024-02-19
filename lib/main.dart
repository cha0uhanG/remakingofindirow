import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remakingofindigrow/API/AndroidorIos.dart';
import 'package:remakingofindigrow/Signup_page.dart';
import 'package:remakingofindigrow/login_page.dart';
import 'package:remakingofindigrow/loginwithemail.dart';
import 'package:remakingofindigrow/otpcheck_mail.dart';

import 'Controller/Signup_contoller.dart';
import 'otpentering_screen.dart';
import 'SIgnin_mail.dart';

void main() {
  Get.put(TextEditingControllers());
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      home: Android()

    );
  }
}

