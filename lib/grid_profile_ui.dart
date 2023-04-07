import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Stack_Profile_UI extends StatelessWidget {
  const Stack_Profile_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Profile"),
      backgroundColor: Colors.blue,
      leading:const Icon(Icons.menu) ,
      actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.more_vert_outlined),
      )
      ],
      ),
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 240,
              child: const Image(image: NetworkImage("https://media.istockphoto.com/id/962362664/photo/downtown-or-island.jpg?b=1&s=170667a&w=0&k=20&c=FJigNYGI9vdeSCqa7-w5id-xuwUMs9P_JL3UqqsOeeY="),
              fit: BoxFit.fill,
              ),
            ),
            Container(
          height: 400,
          color: Colors.white,

        ),
          ],
        ),
        
        const Positioned(
          top: 180,
          left: 134,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 62,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
            ),
          ),
        ),
        const Positioned(
          top: 210,
          left: 290,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30,
            child: Icon(Icons.add,size: 40,),
          ),
        ),
        const Positioned(
          top: 210,
          left: 45,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 30,
            child: Icon(Icons.message,),
          ),
        ),
        const Positioned(
          top: 308,
          left: 128,
          child: Text("Anila Murali",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
            ),),
        ),
        const Positioned(
          top: 335,
          left: 95,
          child: Text("Software Engineer/ Developer",style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 15
            ),),
        )



      ]),
    );
  }
}