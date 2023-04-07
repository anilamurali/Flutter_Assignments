import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Farmers_Fresh_UI extends StatefulWidget{
  @override
  State<Farmers_Fresh_UI> createState() => _Farmers_Fresh_UIState();
}

class _Farmers_Fresh_UIState extends State<Farmers_Fresh_UI> {
  var picture=[
    "https://images.unsplash.com/photo-1597362925123-77861d3fbac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1573246123716-6b1782bfc499?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1547458095-8642c575ed1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGV4b3RpYyUyMGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1517115358639-5720b8e02219?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWVhdCUyMGFuZCUyMGZpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    
  ];
  var img=[
    "https://images.unsplash.com/photo-1597362925123-77861d3fbac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1573246123716-6b1782bfc499?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1547458095-8642c575ed1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGV4b3RpYyUyMGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1611864581049-aca018410b97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bnV0cml0aW91cyUyMGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXRzJTIwcGxhdGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1627735483792-233bf632619b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmxvdXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    ];
  var subtitle=[
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Flours"];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.green[700],
          floating: true,
          pinned: true,
          title: const Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold,)),
          actions: const [
           Icon(Icons.location_on_outlined),
           Padding(
             padding: EdgeInsets.only(top: 20,left: 10,right: 10),
             child: Text("Kochi"),
           ),
           Icon(Icons.arrow_drop_down_outlined)

          ],
          bottom: AppBar(
            elevation: 0,
            
            backgroundColor: Colors.green[700],
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:  const TextField(
                  decoration: InputDecoration(
                    hintText: "Search Vegitables, Fruits...",
                    prefixIcon: Icon(Icons.search),
                              ),
                ),
              ),
            ),
            
          ),

        ),
        
        SliverList(delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(top:10,),
            child: FittedBox(
              child: Container(
                height:30,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                 MyContainer("FRUITS"),
                 MyContainer("VEGITABLE"),
                 MyContainer("EXOTIC"),
                 MyContainer("FRESH CUTS")
                 
                ],
              ),
          
          
          
              ),
            ),
          )
        ])),
        SliverList(
            delegate: SliverChildListDelegate([
          CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (BuildContext, index, realindex) {
                return Container(
                  height: 600,
                  width: 600,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(picture[index]),
                  ),
                );
              },
              options:CarouselOptions(
     // height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 1,
     // onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   ))
        ])),

        SliverList(delegate: SliverChildListDelegate(
          [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                 
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color.fromARGB(255, 196, 193, 193))
                  ),
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.timer_sharp,size: 30,
                                      color: Colors.green[400]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 8),
                                  child: Text("TIMELY DELIVERY",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.location_city_sharp,size: 30,
                                      color: Colors.green[400]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 8),
                                  child: Text("TRACEABILTY",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                )
                            ],
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Container(
                           child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.local_convenience_store_rounded,size: 30,
                                      color: Colors.green[400]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 8),
                                  child: Text("LOCAL SOURCING",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                                )
                            ],
                         ),
                         ),
                       )
                       ],
                      ),
                ),
              ),
            )

        ])),
        SliverList(delegate: SliverChildListDelegate([
          const Padding(
            padding: EdgeInsets.only(left: 15,top: 8),
            child: Text("Shop By Category",style: TextStyle(fontSize: 20),),
          )
        ])),
        SliverList(delegate: SliverChildListDelegate([
          Container(
            height: 400,
            child: GridView.count(crossAxisCount: 3,
            children: List.generate(6, (index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child:Column(
                  children: [
                    Container(
                      height: 90,
                      child: Image.network(img[index],fit: BoxFit.fill,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(subtitle[index]),
                    )
                  ],
                ) ,
              );

            }),
            ),

          )

        ]))

      ],),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[600],
        backgroundColor: Colors.white,
        currentIndex: index,
        onTap: (ontap_index){
          setState(() {
            index=ontap_index;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "CART"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "ACCOUNT")


      ]),

      

    );
  }
}
class MyContainer extends StatelessWidget {
  final String text;
 MyContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Center(child: Text(text, style:  TextStyle(fontSize: 8,
          color: Colors.green[900],fontWeight: FontWeight.bold
          ),)),
        ),
      ),
    );
  }
}
