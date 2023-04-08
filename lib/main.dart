import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Hotel%20UI/hotel.dart';
import 'package:flutter_assignment_ui/Hotel%20UI/hotelhome.dart';
import 'package:flutter_assignment_ui/contact_list.dart';
import 'package:flutter_assignment_ui/drawer_ui.dart';
import 'package:flutter_assignment_ui/farmers_fresh_ui/farmers_fresh.dart';
import 'package:flutter_assignment_ui/stack_profile_ui.dart';
import 'package:flutter_assignment_ui/grid_view_assignment_ui.dart';
import 'package:flutter_assignment_ui/phonelist.dart';
import 'package:flutter_assignment_ui/placelist.dart';
import 'package:flutter_assignment_ui/profileui_2.dart';
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
      home:  Stack_Profile_UI(),
      routes: {
        "second":(context) => Hotel_UI(),
      },
      );
      
    
  }));
}

class SplashScreen extends StatefulWidget {
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
void initState(){
    Timer(Duration(seconds: 10), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>PlaceList()));
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