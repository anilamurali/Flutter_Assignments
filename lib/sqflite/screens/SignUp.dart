import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/sqflite/db/SQLHelper.dart';
import 'package:flutter_assignment_ui/sqflite/screens/LoginPage.dart';
import 'package:flutter_assignment_ui/sqflite/screens/login_signup.dart';

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
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget{
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formkey=GlobalKey<FormState>();
  var showpass=true;
  var showpass1=true;
  var confirmpass;

  final conname=TextEditingController();
  final conemail=TextEditingController();
  final pass=TextEditingController();
  final cpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    void Addnewuser(String name, String email, String password) async {

      var id = await SQLHelper.AddNewUser(name, email, password);

      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  Login_and_SignUp()));
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sign Up",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                const Padding(
                  padding:  EdgeInsets.only(top: 20),
                  child: Text("Create an Account. Its free"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: TextFormField(
                    controller: conname,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        labelText: "Name",
                        hintText: " Name",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    validator: (name){
                      if  (name !.isEmpty){
                        return "Enter Your name";

                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: TextFormField(
                    controller: conemail,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        labelText: "Email ID",
                        hintText: "Email ID",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    validator: (email){
                      if  (email !.isEmpty ||!email.contains("@")){
                        return "Enter a valied Email ID";

                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: TextFormField(
                    controller: pass,
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.visibility_off),
                        labelText: "Password",
                        hintText: "Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if (showpass) {
                              showpass=false;

                            }
                            else{
                              showpass=true;
                            }
                          });
                        }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    validator: (pass){
                      if (pass !.isEmpty || pass.length<8) {
                        return "Password must should be greater than 8";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: TextFormField(
                    controller: cpass,
                    obscureText: showpass1,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.visibility_off),
                        labelText: "Confirm Password",
                        hintText: "Confirm Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if (showpass1) {
                              showpass1=false;

                            }
                            else{
                              showpass1=true;
                            }
                          });
                        }, icon: Icon(showpass1==true ? Icons.visibility_off : Icons.visibility)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    validator: (pass1){
                      if (pass1 !.isEmpty || pass1.length<8) {
                        return "Password must should be greater than 8";
                      }
                      else if(pass.text != cpass.text){
                        return "Password not matched";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 60,
                    width: 500,
                    child: ElevatedButton(onPressed: (){
                      final valied=formkey.currentState!.validate();
                      if(valied){
                        Addnewuser(conname.text,conemail.text,pass.text);
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            action:
                            SnackBarAction(label: 'UNDO', onPressed: () {}),
                            content: const Text('Invalid username / password')));
                      }
                    }, child: Text("Sign Up"),
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),),
                  ),
                ),
                 Padding(
                  padding:  const EdgeInsets.only(top: 20),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginPage()));
                  }, child: Text("Do you have an account? Login")),
                ),

              ],
            ),
          ),
        ),
      ),

    );

  }


}