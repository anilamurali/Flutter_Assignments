import 'package:flutter/material.dart';
class Drawer_UI extends StatelessWidget{
  var icons=[
    Icons.dashboard_outlined,
    Icons.rocket_launch_outlined,
    Icons.apartment_outlined,
    Icons.line_axis_sharp,
    Icons.person_add_alt_1_outlined,
    Icons.my_library_books_outlined,
    Icons.connect_without_contact_outlined
  ];
  var title=<String>[
    "Dashboard",
    "Projects",
    "Companies",
    "Subscription",
    "Clients",
    "Library",
    "Contact"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer",),
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
    

      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Colors.orange,
            Colors.pinkAccent,
            Colors.pink
            
          ])
        ),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-S4Nt3OIJdE8Jix5EMUJO8T1Ip_oXF39clQ&usqp=CAU"),
                  
                  ),
                  title: Text("Sundar Pichai",style: TextStyle(color: Colors.white),),
                  subtitle: Text("CEO of Alphabet and Google",style: TextStyle(color: Colors.white),),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: 550,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: title.length,
                      itemBuilder: (BuildContext,index){
                        return ListTile(
                          leading: Icon(icons[index],color: Colors.white,) ,
                          title: Text(title[index],style: TextStyle(color: Colors.white),) ,
                          
                        
                        );
                        
                      }),
                
                  ),
                ) ,
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: ElevatedButton(onPressed: (){}, child: Text("Logout"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),),
                ),
            ],
            
          ),
        ),
        
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-S4Nt3OIJdE8Jix5EMUJO8T1Ip_oXF39clQ&usqp=CAU"))
            ),
            ),
        ),
        const Text("Sundar Pichai",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 300,
            child: Text("Pichai Sundararajan, better known as Sundar Pichai, is an Indian-American business executive. He is the chief executive officer of Alphabet Inc. and its subsidiary Google. Born in Madurai, India, Pichai earned his degree from IIT Kharagpur in metallurgical engineering."
                      )),
        )
      ]),

    );

  }

}



