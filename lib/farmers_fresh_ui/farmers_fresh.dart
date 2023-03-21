import 'package:flutter/material.dart';
class Farmers_Fresh_UI extends StatefulWidget{
  @override
  State<Farmers_Fresh_UI> createState() => _Farmers_Fresh_UIState();
}

class _Farmers_Fresh_UIState extends State<Farmers_Fresh_UI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          title: const Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold,)),
          actions: const [
           Icon(Icons.location_on_outlined),
           Text("Kochi"),
           Icon(Icons.arrow_drop_down_outlined)

          ],
          bottom: AppBar(
            elevation: 0,
            title: Container(
              height: 40,
              width: double.infinity,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search Vegitables, Fruits...",
                  prefixIcon: Icon(Icons.search),
                            ),
              ),
            ),
            
          ),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[100],
                
              ),
              child: const Text("VEGITABLES",style: TextStyle(color: Colors.teal),),
            ),
             Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[100],
                
              ),
              child: const Text("FRUITES",style: TextStyle(color: Colors.teal),),
            ),
             Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[100],
                
              ),
              child: const Text("EXOTIC",style: TextStyle(color: Colors.teal),),
            ),
             Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[100],
                
              ),
              child: const Text("FRESH CUTS",style: TextStyle(color: Colors.teal),),
            )
            
          ],
        )

      ],),

      
    );
  }
}