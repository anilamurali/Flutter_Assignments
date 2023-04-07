import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Hotel%20UI/hotel_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Hotel_Home_UI extends StatefulWidget {
  const Hotel_Home_UI({super.key});

  @override
  State<Hotel_Home_UI> createState() => _Hotel_Home_UIState();
}

class _Hotel_Home_UIState extends State<Hotel_Home_UI> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
          SliverAppBar(
            backgroundColor: Colors.orange[700],
            foregroundColor: Colors.black,
            leading: const Icon(Icons.menu),
            floating: true,
            pinned: true,
            title: const Text("Yathra",
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 25),
            
            ),
           actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle,size: 35,),
              ),
              
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.orange[700],
              title: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search Hotels...",
                    prefix: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            
            Container(
              height: 650,
              child: GridView.count(
                crossAxisCount: 2,
                children: dummyHotels.map((hotel){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.grey[300],
                      child: FittedBox(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                height: 120,
                            
                               child: Image.network(hotel["image"],fit: BoxFit.fill,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(hotel["title"],style: const TextStyle(fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.black
                               )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(hotel["place"],style: const TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.black
                               )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(hotel["review"],style: const TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.black
                               )),
                            ),
                            TextButton(onPressed: ()=>goToHotel(context,hotel["id"]),
                             child: const Text("View hotel",style: TextStyle(fontSize: 16,
                             fontWeight: FontWeight.bold,
                             color: Colors.deepOrange
                             ),)),
                            
                                        
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            )

          ]))
        ]

      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),
        topRight: Radius.circular(20)),
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
  
  goToHotel(BuildContext context, hotelId) {
    Navigator.pushNamed(context, "second",arguments:hotelId);
  }
}