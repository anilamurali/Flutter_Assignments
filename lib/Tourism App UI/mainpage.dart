import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/Place_details.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/placelist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
        routes: {
          "placedetails":(context)=>Place_Deatails_Screen(),
        },
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(400),
                  child: Image.asset("assets/images/travel3.png"),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 5),
              child: Text("Yathra",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30

                ),),
            ),

            const Padding(padding: EdgeInsets.only(top: 5),
            child: Text("Explore The World With Us",
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,

            ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                width: 120,
                height: 45,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => PlaceList_Screen()));
                }, child: const Text("Log In"),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("-Or-",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35,left: 25,right: 25),
              child: ElevatedButton(onPressed: (){},child:  ListTile(
                leading: Padding(
                  padding:  EdgeInsets.only(top: 5),
                  child: Text("Login with Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                trailing: FaIcon(FontAwesomeIcons.facebook,
                color: Colors.white,),

              ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),backgroundColor: Colors.blue[600]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
              child: ElevatedButton(onPressed: (){},child: const ListTile(
                leading: Padding(
                  padding:  EdgeInsets.only(top: 5),
                  child: Text("Login with Twiter",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                trailing: FaIcon(FontAwesomeIcons.twitter,
                  color: Colors.white,),

              ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),backgroundColor: Colors.lightBlueAccent),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
              child: ElevatedButton(onPressed: (){},child:  ListTile(
                leading: Padding(
                  padding:  EdgeInsets.only(top: 5),
                  child: Text("Login with Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                trailing: FaIcon(FontAwesomeIcons.google,
                  color: Colors.white,),

              ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),backgroundColor: Colors.red,),),
            ),
          ],

        ),

      ),
    );
  }
}
