import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/mainpage.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/placelist.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var icons=[
      Icons.home,
      Icons.book_online,
      Icons.payment,
      Icons.card_travel_sharp,
      Icons.history,
      Icons.logout
    ];
    var title=<String>[
      "Home",
      "Booking",
      "Payments",
      "Cart",
      "History",
      "Logout"
    ];
    return  Drawer(
    child: Container(
    decoration:  const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.white

    ])
    ),
    child: ListView(
    children: [
    const Padding(
    padding: EdgeInsets.only(top: 50),
    child: ListTile(
    leading: CircleAvatar(
    radius: 40,
    backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1664303626550-bc25e99ca208?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),

    ),
    title: Text("Anila Murali",style: TextStyle(color: Colors.white),),

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

    onTap: (){
    if(title[index]==title[0]){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaceList_Screen()));
    }
    else if(
    title[index]==title[5]
    ){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
    else{
    return null;
    }
    },

    );

    }),

    ),
    ) ,
    // Padding(
    //   padding: const EdgeInsets.only(right: 10,left: 10),
    //   child: ElevatedButton(onPressed: (){
    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    //   }, child: Text("Logout"),
    //     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),
    // ),
    ],

    ),
    ),

    );


  }
}
class MyIcon extends StatelessWidget {
 final IconData icon;
 final String title;
MyIcon(this.icon,this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 12,bottom: 8),
      child: Container(
        height: 60,
        width: 100,

        child: FittedBox(
          child: Row(
            children: [
              Icon(icon,color: Colors.blue,),
              Text(title,style: const TextStyle(
                color: Colors.blue
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
class Mychip extends StatelessWidget {
  final String price;
  const Mychip(this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(price,style: const TextStyle(fontWeight: FontWeight.bold,
          ),),
          const Text("per day"),
        ],
      ),
    );
  }
}


