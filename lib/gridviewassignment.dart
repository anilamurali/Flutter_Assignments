
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class GridViewExample extends StatelessWidget{
  var color=[Colors.blue,
            Colors.orange,
            Colors.green,
            Color.fromARGB(255, 224, 87, 77),
            Color.fromARGB(255, 41, 79, 145),
            Colors.purpleAccent,
            Color.fromARGB(255, 16, 131, 116),
            Colors.yellow,
            Colors.red,
            Colors.pink,
            Colors.greenAccent,
            Colors.deepPurpleAccent];
  var icon=[FontAwesomeIcons.house,
              FontAwesomeIcons.bell,
              FontAwesomeIcons.camera,
              FontAwesomeIcons.ticket,
              FontAwesomeIcons.bookBookmark,
              FontAwesomeIcons.phone,
              FontAwesomeIcons.solidEnvelope,
              FontAwesomeIcons.map,
              FontAwesomeIcons.microchip,
              FontAwesomeIcons.microphoneLines,
              FontAwesomeIcons.fileCirclePlus,
              FontAwesomeIcons.music];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GRID VIEW"),),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 2),
          itemCount: 12,        
         itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),color: color[index],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 4,
                    offset:Offset(5, 5) 
                  )
                ]
                ),
                child: Center(
                  child: ListTile(
                    
                    leading: FaIcon(icon[index]),
                    title: Text("Heart shaker"),
                  ),
                  
                ),
                    
            ),
          );

        }),
    );
  }

}