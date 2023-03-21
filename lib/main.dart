import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/drawer_ui.dart';
import 'package:flutter_assignment_ui/grid_view_assignment_ui.dart';
import 'package:flutter_assignment_ui/phonelist.dart';
import 'package:flutter_assignment_ui/whatsapp_ui/mainpage.dart';


void main(){
  runApp(DevicePreview(builder: (context){
    enabled: !kReleaseMode;
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color.fromARGB(255, 5, 77, 73))
      ),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SplashScreen(),);
    
  }));
}

class SplashScreen extends StatefulWidget {
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
void initState(){
    Timer(Duration(seconds: 10), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>GridViewExample()));
    });

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("Assignments"),),
    body: Center(
      child: Column( mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Image(image: AssetImage("assets/images/windows.png"),height: 200,width: 200,),
        Text("MY ASSIGNMENTS",style: TextStyle(
          fontSize: 40,
          color: Color.fromARGB(255, 3, 40, 58),
          fontWeight: FontWeight.bold),)
      ],
      ),
    ),

   );
  }
}