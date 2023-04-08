import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
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
      home:  Profile_UI_2(),
      
      );
      
    
  }));
}


class Profile_UI_2 extends StatelessWidget {
  var title=<String>[
    "Privacy",
    "Settings",
    "Purchase History",
    "Help and Support",
    "Invite Friend",
    "Cart",
    "Logout"
  ];
  var icn=[
    Icons.remove_red_eye,
    Icons.settings,
    Icons.history,
    Icons.support_agent,
    Icons.people,
    Icons.shopping_basket_sharp,
    Icons.logout

  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 12,),
            child: ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                 radius: 70,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-S4Nt3OIJdE8Jix5EMUJO8T1Ip_oXF39clQ&usqp=CAU"),
                       
              ),
            ),
          ),
          Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
               MyIcon(icons: FontAwesomeIcons.facebookF),
               MyIcon(icons: FontAwesomeIcons.twitter),
                MyIcon(icons: FontAwesomeIcons.linkedinIn),
                MyIcon(icons: FontAwesomeIcons.github),
            ]),

          ),
          const Align(
            alignment: Alignment.center,
            child: Text("Sudhar Pichai",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: Text("@CEO of Google",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
           
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text("Indian-American Business executive.",style: TextStyle(
                color: Colors.blueGrey
              ),),
            ),
           
          ),

          Expanded(child: ListView.builder
          (itemCount: title.length,
            itemBuilder: (context,index){
              return Padding(
                padding:  const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.grey[300],
                  ),
                  child: ListTile(
                    leading: Icon(icn[index]),
                    title: Text(title[index]),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              );
    
          })
          )
        ],
        
        ),
      ),
      
    );
  }
}
class MyIcon extends StatelessWidget {
  final IconData icons;
  
  MyIcon({
    required this.icons,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12,right: 12),
      child: FaIcon(icons,
      color: Colors.blue,size: 40,),
    );
  }
}