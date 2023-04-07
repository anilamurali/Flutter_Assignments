import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExpansionTile_UI extends StatelessWidget {
  ///Fluter Internship six months an

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("EXPANSION TILE"),),
      body: ListView(
        children:  [
          const Center(
            child:  Text(
              "EXPERIENCE",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                   40 
                  )
                ),
                child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_L72m3bQKrm.json",
                fit: BoxFit.fill,
                height: 200,
                width: 500),
                
              ),
              const Positioned(
                left: 10,
                right: 25,
                bottom: 10,
                top: 25,
                child: ExpansionTile(
                  title: Text("Fluter Internship",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle: Text("6 Months"),
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                    title: Text("Duration : 6 Months",),
                  )
                ],
              
                ),
              )
            ],
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                   40 
                  )
                ),
                child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_zh6xtlj9.json",
                fit: BoxFit.fill,
                height: 200,
                width: 500),
                
              ),
              const Positioned(
                left: 10,
                right: 25,
                bottom: 10,
                top: 25,
                child: ExpansionTile(
                  title: Text("JAVA Internship",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle: Text("6 Months"),
                children: [
                  ListTile(
                    //leading: CircleAvatar(backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
                    title: Text("Duration : 4 Months"),
                  )
                ],
              
                ),
              )
            ],
          ),
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                   40 
                  )
                ),
                child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_2znxgjyt.json",
                fit: BoxFit.fill,
                height: 200,
                width: 500),
                
              ),
              const Positioned(
                left: 10,
                right: 25,
                bottom: 10,
                top: 25,
                child: ExpansionTile(
                  title: Text("Python Internship",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                subtitle: Text("6 Months"),
                children: [
                  ListTile(
                    //leading: CircleAvatar(backgroundImage: NetworkImage("data:image/png;base64,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"),),
                    title: Text("Duration : 4 Months"),
                  )
                ],
              
                ),
              )
            ],
          )
        ],
      ),


    );
  }
}