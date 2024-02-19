import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remakingofindigrow/Controller/Signup_contoller.dart';

import 'Home_page.dart';



class indigrow extends StatefulWidget {
  const indigrow({super.key});

  @override
  State<indigrow> createState() => _indigrowState();
}

class _indigrowState extends State<indigrow> {
 final TextEditingControllers controllers = Get.find();
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Container(height: 150,child: Center(child: Image.asset("image/app_icon.png")),) ,),
        body: SizedBox(
   child: SingleChildScrollView(
   child: Column(
        children: [
        SizedBox( width: 250,
        height: 250,
        child: Image.asset("image/signup.png")),
    SizedBox(height:5 ,),
    Center(child: Text("Sign Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
    SizedBox(height:10 ,),

    SizedBox(width: 330,
    child: TextField(
    controller: controllers.nameController,
    decoration: InputDecoration( labelText: 'Please enter your name',
    helperText: 'Full Name',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),





    SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.motherNameController,
    decoration: InputDecoration(labelText: 'Please enter mother\'s name',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.emailController,
    decoration: InputDecoration(labelText: 'Please enter your email',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.mobileController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: 'Please enter your Mobile Number ',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.pincodeController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: 'Please enter your Pincode ',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.panCardController,
    decoration: InputDecoration(labelText: 'Please enter your Pan Card ',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.aadharController,
    decoration: InputDecoration(labelText: 'Please enter your AAdhar Number ',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.passwordController,
    obscureText: true,
    decoration: InputDecoration(labelText: 'Please enter your Paasword ',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: SizedBox(width: 330,
    child: TextField(controller: controllers.confirmPasswordController,
    obscureText: true,
    decoration: InputDecoration(labelText: 'Please Confirm your Paasword',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: TextField(controller: controllers.partnerIdController,
    decoration: InputDecoration(labelText: 'Please enter your Partner ID ',
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    Container(width: 330,decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(20),
    ),
    child:DropdownButton<String>(
    value: selectedItem,
    onChanged: (String? Valuee) {
    setState(() {
    selectedItem = Valuee;
    });
    },
    items: <String>['Male','Female']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    ),
    )
    ,SizedBox(height:2 ,),
    SizedBox(width: 330,
    child: TextField(
     readOnly: true,
     onTap: () => _selectDate(context),
     controller: TextEditingController(
      text: _selectedDate == null
          ? ''
          : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
     ),

    keyboardType: TextInputType.datetime,
    // isCalendar: true,
    decoration: InputDecoration(
    labelText: 'Please enter your DOB',


    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
    ),
    ),SizedBox(height:15 ,),
    SizedBox(width: 330,
    child: ElevatedButton(
    onPressed: (){
     Navigator.push(context,  MaterialPageRoute(builder: (context) => Home()),);
    }, child: Text(
    "Continue",style: TextStyle(color: Colors.black),),),),
         SizedBox(height:10 ,),
    Container(height:60,width: 150,child:Image.asset("image/made_in_india.png") ,),
    
    SizedBox(height:2 ,),
         
    ],
    ),
    ),
    ),

    );
  }
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
   final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1950),
    lastDate: DateTime(2101),
   );
   if (pickedDate != null && pickedDate != _selectedDate) {
    setState(() {
     _selectedDate = pickedDate;
    }
    );
   }
  }

}


