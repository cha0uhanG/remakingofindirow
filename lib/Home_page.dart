import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/Signup_contoller.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingControllers controllers = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height:250),
            Center(child: Text("Hi Motherfucker",style: TextStyle(fontSize: 30),)),
            Text("your phone number is ${controllers.mobileController.text}"),
          ],
        ),
      ) ,
    );
  }
}
