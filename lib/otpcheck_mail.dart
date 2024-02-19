
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:remakingofindigrow/Controller/Signup_contoller.dart';
import 'package:remakingofindigrow/Home_page.dart';
import 'package:remakingofindigrow/otpentering_screen.dart';

/*
void signInWithOtp(String? otp,String? token) {
  showLoader();
  DioService().request(
      apiConfig: ApiConfigurator.basic,
      endPoint: ApiEndPoint.signInWithOtp,
      method: Method.POST,
      params: {
        "mobile": mobileLoginController.text.toString(),
        "otp": otp,
        "device_type": Platform.isAndroid ? "A" : "I",
        "device_token": token
      }).then(
        (res) {
      final baseRes = BaseResponse.fromJson(res.data);
      hideLoader();
      if (baseRes.success) {
        MyPref().token.val = baseRes.data['token'];
        MyPref().isLogin.val = true;
        MyPref().isPartner.val = false;
        var model = UserModel.fromJson(baseRes.data);
        MyPref().userDetail.val = json.encode(model);
        MyPref().creditMobileNumber.val = model.mobile ?? "";

        Get.offAllNamed(Routes.homeScreen);
        emailLoginController.clear();
        passwordLoginController.clear();
      } else {
        showError(baseRes.message);
      }
    },
    onError: (error) {
      hideLoader();
      showError(error.toString());
    },
  );
}

*/


class BaseResponse {
  int? status;
  int? code;
  dynamic data;
  String? message;
  String? error;
  BaseResponse({this.status, this.code, this.data, this.message, this.error,});


  ///This is to verify whether the response is success or failure.
  bool get success => status == 0 ? false : true;


  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
    status: json["status"],
    code: json["code"],
    data: json["data"],
    message: json["message"],
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "code": code,
    "data": data.toJson(),
    "message": message,
    "error": error,
  };
}











































// import 'dart:async';
//
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:remakingofindigrow/API/api_calling.dart';
// import 'package:remakingofindigrow/Controller/Signup_contoller.dart';
// import 'package:remakingofindigrow/Home_page.dart';
// import 'package:otp_timer_button/otp_timer_button.dart';
//
//
// class Otpscreeen extends StatefulWidget {
//   Otpscreeen({super.key});
//
//   @override
//   State<Otpscreeen> createState() => _OtpscreeenState();
// }
//
// class _OtpscreeenState extends State<Otpscreeen> {
//   final TextEditingControllers controllers = Get.find();
//   var OTP ;
//   late Timer _timer ;
//   int i = 30 ;
//
//   @override
//   void initState() {
//     settime();
//     super.initState();
//   }
//
//
//   void settime() {
//     Timer.periodic(Duration(seconds:1), (timer) {
//       if(i==0){
//         timer.cancel();
//       }else{
//         setState(() {
//           --i;
//         });
//       }
//     });
//   }
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Container(height: 150,child: Center(child: Image.asset("image/app_icon.png"))),),
//       body: SingleChildScrollView(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
//           children: [SizedBox(height:220 ),
//             Text("Please Enter OTP sent to:"),
//             SizedBox(height:5 ,),
//             Text("${controllers.mobileController.text}"),
//             SizedBox(height:5 ,),
//             Center(
//               child: OtpTextField(
//                 numberOfFields: 4,
//                 borderColor: Color(0xFF512DA8),
//                 //set to true to show as box or false to show as dash
//                 showFieldAsBox: true,
//                 //runs when a code is typed in
//                 onCodeChanged: (String code) {
//
//                   print("The otp is $OTP");
//                 },
//
//                 onSubmit: (String verificationCode){
//                   OTP = int.parse(verificationCode);
//                   print("The otp is $OTP");
//                   otpcheck( OTP, context );
//                 }, // end onSubmit
//               ),
//             ),
//             SizedBox(height:5 ,),
//             Row(children: [],),
//             (i==0)?InkWell(onTap:(){setState(() {
//               i=30; settime();
//             });} ,child: Text("Resend SMS", style: TextStyle(color: Colors.green, decoration: TextDecoration.underline,
//             )
//             )):Text("Resend SMS in $i"),
//           ],
//         ),
//       ),
//     );
//   }
// }



//
