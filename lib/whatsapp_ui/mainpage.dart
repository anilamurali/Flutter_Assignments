import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/whatsapp_ui/call_screen.dart';
import 'package:flutter_assignment_ui/whatsapp_ui/chat.dart';
import 'package:flutter_assignment_ui/whatsapp_ui/sample.dart';
import 'package:flutter_assignment_ui/whatsapp_ui/status_screen.dart';

class WhatsAppMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions:  [
            const Icon(Icons.camera_alt_sharp),
            const SizedBox(width: 20,),
            const Icon(Icons.search),
            const SizedBox(width: 20,),
            PopupMenuButton(itemBuilder: (context){
              return [
                
                const PopupMenuItem(child: Text("New Group")),
                const PopupMenuItem(child: Text("New Broadcast")),
                const PopupMenuItem(child: Text("Linked Devices")),
                const PopupMenuItem(child: Text("Starrerd Messages")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings")),
              ];
            })
          ],
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.people),),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Call")
          ]),
        ),
        body:  TabBarView(children:[
           Center(child: Text("Status"),),
           ChatsScreen(),
           StatusScreen(),
           CallScreen(),
          
        ] 
        ),
        
        
      ),
    );
  }

}