import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:remakingofindigrow/Signup_page.dart';
import 'package:remakingofindigrow/loginwithemail.dart';
import 'package:remakingofindigrow/Controller/Signup_contoller.dart';
import 'package:remakingofindigrow/otpentering_screen.dart';
import 'package:get/get.dart';

import 'API/api_calling.dart';



class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final TextEditingControllers controllers = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Container(height: 150,child: Center(child: Image.asset("image/app_icon.png"))),),
     body: SingleChildScrollView(child:
      Column(
        children: [SizedBox( width: 250,
            height: 250,
            child: Image.asset("image/signup.png")),
          SizedBox(height:5 ,),
          Center(child: Text("Log In",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
          SizedBox(height:15 ,),
          SizedBox(width:330 ,
            child: TextField(controller:controllers.mobileController ,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Please Enter your Number",
               // label:Text("Enter Mobile number" ),
                labelText:"Enter Mobile number" ,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          SizedBox(height:20 ,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(width: 40,
              child: SizedBox(width:05,
                child: Divider(
                          color: Color.fromARGB(
                          255, 173, 168, 168),
                         thickness: 0.7),
              ),
            ),
              SizedBox(width: 6),
              Text("Or Continue With ",style: TextStyle(fontSize: 18,fontFamily: 'Avenir',),),
              SizedBox(width: 6),
              SizedBox(width:40,
                child: Divider(
                    color: Color.fromARGB(
                        255, 173, 168, 168),
                    thickness: 0.7),
              ),
            ],
          ),
          SizedBox(height:10 ,),
          ElevatedButton(onPressed: (){
            Navigator.push(context,  MaterialPageRoute(builder: (context) => indigrow()),);
          }, child: Text("Sign Up")),
          SizedBox(height:40 ,),
          InkWell(child: Text("Login with email ID ",style: TextStyle(fontSize: 18,color: Colors.green),)
          ,onTap: (){Navigator.push(context,  MaterialPageRoute(builder: (context) => Email_page()),);},),
          SizedBox(height:70),
          SizedBox(
            width: 330,
            child: ElevatedButton(onPressed:() {
              print("hi");
              String mobileNumber = controllers.mobileController.text;
              otpsend(mobileNumber);   // Api calling to send otp in the user number
              print(mobileNumber);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Otpscreen()),

              );
            } ,child: Text(
              "Continue",style: TextStyle(color: Colors.black),)),

          ),
          SizedBox(height:10 ,),
          Container(height:60,width: 150,child:Image.asset("image/made_in_india.png") ,),

          SizedBox(height:2 ,),


        ],
      ),),


    );
  }
}
