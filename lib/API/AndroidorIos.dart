import 'dart:io';
import 'package:flutter/material.dart';


class Android extends StatefulWidget {
  const Android({super.key});

  @override
  State<Android> createState() => _AndroidState();
}

class _AndroidState extends State<Android> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(check() ))
        ],
      ),
    );
  }

   String check() {
    if(Platform.isAndroid){return("Yes it is a Android phone motherfucker!!");}
    else {return("No");}
  }
}
