import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Hotel%20UI/hotel_data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Hotel_UI extends StatefulWidget {
  
  
  @override
  State<Hotel_UI> createState() => _Hotel_UIState();
}

class _Hotel_UIState extends State<Hotel_UI> {
   int index=0;
  @override
  Widget build(BuildContext context) {
   
    final hotelId=ModalRoute.of(context)?.settings.arguments;
    final hotel=dummyHotels.firstWhere((element) => element["id"]==hotelId);
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
          height: 300,
          child: Image(image: NetworkImage(hotel["image"]),fit:BoxFit.fill,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: double.infinity,
             child:RatingBar.builder(
              itemSize: 30,
                      initialRating: hotel["rating"],
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                      itemBuilder: (context, _) => const Icon(
             Icons.star,
             color: Colors.orange,
                      ),
                      onRatingUpdate: (rating) {
             print(rating);
                      },
                   )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(onPressed:() {}, child: Text(
              "Book Now",style: TextStyle(fontSize: 18),),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor: Colors.orange[700],
            
            ),
            ),
          ),
        ),
        Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hotel["name"],textAlign: TextAlign.left,style:
                   const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                ),
        

          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(hotel["description"],style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),textAlign:TextAlign.justify ),
                ),
                
              ],
            ),
          ))
        
          ],
        ),
        
                Positioned(
                  top: 200,
                  left: 15,
                  child: Text(hotel["title"],style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,fontWeight: FontWeight.bold),)),
                Positioned(
                   top: 230,
                  left: 15,
                  child: Text(hotel["place"],style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,fontWeight: FontWeight.bold), 
                    ),),
                Positioned(
                  top: 310,
                  right: 15,
                  child: Text(hotel["rate"],style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 25,fontWeight: FontWeight.bold),)),
                Positioned(
                  top: 265,
                  left: 15,
                  child: Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(hotel["review"],textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                )),

                const Positioned(
                   top: 272,
                  right: 15,
                  child: FaIcon(FontAwesomeIcons.heart,color: Colors.white,),
                  ),
                  const Positioned(
                    top: 330,
                  right: 15,
                    child: Text("per night"))

      ]),
      bottomNavigationBar: ClipRRect
      (
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.orange[700],
          
          currentIndex: index,
          onTap: (ontap_index){
            setState(() {
              index=ontap_index;
            });
          },
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart),label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
      
      
        ]),
      ),
    );
  }
}