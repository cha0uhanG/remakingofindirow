import 'package:flutter/material.dart';
import 'package:remakingofindigrow/loginwithemail.dart';


class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Container(height: 150,child: Center(child: Text("Forgot Password"
      ,style:TextStyle(fontSize:18 ,fontWeight:FontWeight.w500 ) ,))),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(margin:EdgeInsets.all(25) ,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(hintText: "Email Id",
                  // label:Text("Enter Mobile number" ),
                  labelText:"Please enter your Email id" ,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.greenAccent),),
                ),
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 100,
          child: Column(
              children: [
              InkWell(
              onTap: () {
      },
          child: Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 5, left: 24, right: 30),
              width: double.infinity,
              height: 40.93,
              decoration: const BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10)),
                  color: Color(0XFF4E5351)),
              child: const Center(
                  child: Text('Continue',
                      style: TextStyle(
                          color: Colors.white, fontSize: 16))))),
    ],
    ),
      )
    );
  }
}
