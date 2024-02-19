// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:get/get.dart';
// import 'package:remakingofindigrow/API/api_calling.dart';
// import 'package:remakingofindigrow/Controller/Signup_contoller.dart';
// import 'package:remakingofindigrow/Home_page.dart';
// import 'package:otp_timer_button/otp_timer_button.dart';
//
// class Otpscreenn extends StatefulWidget {
//   Otpscreenn({Key? key}) : super(key: key);
//
//   @override
//   State<Otpscreenn> createState() => _OtpscreennState();
// }
//
// class _OtpscreennState extends State<Otpscreenn> {
//   final TextEditingControllers controllers = Get.find();
//   var OTP;
//   int resendTimer = 30;
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     // Start the timer when the screen is initialized
//     startTimer();
//   }
//
//   @override
//   void dispose() {
//     // Cancel the timer when the screen is disposed
//     _timer.cancel();
//     super.dispose();
//   }
//
//   // Function to start the timer
//   void startTimer() {
//     const oneSec = Duration(seconds: 1);
//     _timer = Timer.periodic(oneSec, (timer) {
//       setState(() {
//         if (resendTimer < 0) {
//           // If the timer reaches 0, cancel it
//           timer.cancel();
//         } else {
//           resendTimer--;
//         }
//       });
//     });
//   }
//
//   // Function to handle resending OTP
//   void resendOTP() {
//     // Reset the timer to 30 seconds
//     resendTimer = 30;
//     // Restart the timer
//     startTimer();
//     // Add logic to resend OTP here
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Container(
//           height: 150,
//           child: Center(child: Image.asset("image/app_icon.png")),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 220),
//             Text("Please Enter OTP sent to:"),
//             SizedBox(height: 5),
//             Text("${controllers.mobileController.text}"),
//             SizedBox(height: 5),
//             Center(
//               child: OtpTextField(
//                 numberOfFields: 4,
//                 borderColor: Color(0xFF512DA8),
//                 showFieldAsBox: true,
//                 onCodeChanged: (String code) {
//                   print("The otp is $OTP");
//                 },
//                 onSubmit: (String verificationCode) {
//                   OTP = int.parse(verificationCode);
//                   print("The otp is $OTP");
//                   otpcheck(OTP, context);
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             resendTimer > 0
//                 ? Text(
//               "Resend OTP in $resendTimer seconds",
//               style: TextStyle(color: Colors.red),
//             )
//                 : ElevatedButton(
//               onPressed: () {
//                 // Call the resendOTP function when the button is pressed
//                 resendOTP();
//               },
//               child: Text("Resend OTP"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }