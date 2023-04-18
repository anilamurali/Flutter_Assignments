import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/sqflite/screens/LoginPage.dart';
import 'package:flutter_assignment_ui/sqflite/screens/SignUp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login_and_SignUp(),
    );
  }
}
class Login_and_SignUp extends StatelessWidget {
  const Login_and_SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(

    child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Hello there",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
           const Padding(
            padding:  EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Text("Automatic identity verification which enables you to verify your identy"),
          ),
          const Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Image(image: NetworkImage("https://t3.ftcdn.net/jpg/03/39/70/90/360_F_339709048_ZITR4wrVsOXCKdjHncdtabSNWpIhiaR7.jpg"),height: 200,width: 200,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
              }, child: const Text("Login"),style: ElevatedButton.styleFrom(shape: const StadiumBorder()),),
            ),
          ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 60,
          width: 300,
          child: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
          }, child: Text("Sign Up"),style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          ),
        ),
      )
      ],
),
),
    ),
    );
  }
}
