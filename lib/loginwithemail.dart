import 'package:flutter/material.dart';
import 'package:remakingofindigrow/Forgot_password.dart';
import 'package:remakingofindigrow/Signup_page.dart';

import 'login_page.dart';



class Email_page extends StatefulWidget {
  const Email_page({super.key});

  @override
  State<Email_page> createState() => _Email_pageState();
}

class _Email_pageState extends State<Email_page> {
  final controller = TextEditingController();
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
            child: TextField(controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Email ID",
                // label:Text("Enter Mobile number" ),
                labelText:"Please Enter your Email Id" ,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          SizedBox(height:50 ,),
          SizedBox(width:330 ,
            child: TextField(controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Password",
                // label:Text("Enter Mobile number" ),
                labelText:"Please enter your password" ,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          const SizedBox(height: 8),

          Row(
            children: [SizedBox(width:250 ,),
              InkWell( onTap:(){  Navigator.push(context,  MaterialPageRoute(builder: (context) => Forgotpassword()),);},
              child: Text("forgot_password",textAlign: TextAlign.right,
                style: TextStyle(decoration: TextDecoration.underline,),),
              )
            ],
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
              Text("Or Continue With ",style: TextStyle(fontSize: 14,fontFamily: 'Avenir',),),
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
          InkWell(child: Text("Login with Number ",style: TextStyle(fontSize: 18,color: Colors.green),)
            ,onTap: (){Navigator.push(context,  MaterialPageRoute(builder: (context) => Login_page()),);},),
          SizedBox(height:70),
          SizedBox(
            width: 330,
            child: ElevatedButton(onPressed:(){} ,child: Text(
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
