
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/data.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/drowerwidget.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/viewall.dart';


class PlaceList_Screen extends StatefulWidget {
  const PlaceList_Screen({Key? key}) : super(key: key);


  @override
  State<PlaceList_Screen> createState() => _PlaceList_ScreenState();
}

class _PlaceList_ScreenState extends State<PlaceList_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Go",style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold),),
          Text("Fast",style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,

        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1664303626550-bc25e99ca208?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          )
        ],
      ),
      drawer: const DrawerWidget() ,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),),
              child:   const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            child: Row(
              children:  [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Popular Place",
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 175,top: 8,right: 10),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ViewAll()));
                  }, child: const Text("View  All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold),),)
                ),

              ],
            ),
          ),
          SingleChildScrollView(
           child: Container(
             height: 550,
             child: GridView.count(crossAxisCount: 2,
               children: myPlaces.map((place){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 80,
                     width: 80,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(
                       fit:BoxFit.fill,
                       image: NetworkImage(place["image"],
                       )),
                     ),
                   child: Stack(
                   children: [
                     GestureDetector(
                       onTap: ()=>goToPlaceDetails(context, place["id"]),
                     ),
                     Positioned(
                         top:145,
                         left:10,
                         child: Text(place["spot"],
                         style: const TextStyle(color: Colors.white,
                         fontSize: 25,
                           fontWeight: FontWeight.bold
                         ),
                         )),
                     Positioned(
                       left:10,
                         top:15,
                         child: Container(
                           height:25,
                           width:80,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(4),
                             color: Colors.blue[600],
                           ),
                           child: Center(
                             child: Text("${place["rating"]}",style: const TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                             ),),
                           ),

                     ))
                     
                   ],
                   ),
                   ),
                 );
               }).toList(),
             )
           ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: 300,
              child: ElevatedButton(onPressed: (){}, child: const Text("EXPLORE NOW"),
                style: ElevatedButton.styleFrom(

                )

              ),
            ),
          )
        ],

      ),

    );
  }

  goToPlaceDetails(BuildContext context, placeId) {
    Navigator.pushNamed(context, "placedetails", arguments: placeId);
  }
  }

