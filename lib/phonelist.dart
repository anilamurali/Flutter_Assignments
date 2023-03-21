import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWithBuilder extends StatelessWidget{
  var phone=<String>["iPhone 12","iPhone 13 Pro ","iPhone 13 ","iPhone 11 ","iPhone 10"];
  var phoneimg=<String>["https://cdn.mos.cms.futurecdn.net/Gj4BpxWHmrcvZmjaW9nmwf.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs6bABRPLZ0lEDGdfsizEwkE-_vEcZGJ2JUA&usqp=CAU",
  "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009695/Croma%20Assets/Communication/Mobiles/Images/243508_0_k6vatk.png/mxw_640,f_auto",
  "https://media.istockphoto.com/id/1190447864/photo/apple-iphone-11-pro-gray-smartphone.jpg?s=612x612&w=0&k=20&c=zETLJeguLoTEFBNKPl1vjPY1lvPW1uM6GPpyiMSvsC0=",
  "https://images.unsplash.com/photo-1509741102003-ca64bfe5f069?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aXBob25lJTIwMTB8ZW58MHx8MHx8&w=1000&q=80"
  ];
  var description=<String>["FaceID, accelerometer","IPhones gets the best app first",
  "The software will be always be up-to-date","Greate costomer support","Better Design"];
  var prize=<int>[999,1199,1299,899,799];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: const Text("List With Builder"),),
    body: ListView.builder(
      itemCount: phone.length,
      itemBuilder: (context,index){
      return Card(
        color: const Color.fromARGB(255, 185, 153, 190),
        child: ListTile(
          leading: Container(
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(phoneimg[index]))
            ),
          ),
          title: Text(phone[index],textAlign: TextAlign.center,),
          subtitle: Text(description[index],textAlign: TextAlign.center,),
          trailing: Text("\$${prize[index]}"),
          

        ),
      );
    }),
   );
  }

}