import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget{
  var fruiticon=<String>["assets/icons/apple.png","assets/icons/Mango.png","assets/icons/Grape.png",
  "assets/icons/banana (1).png","assets/icons/watermelon.png","assets/icons/kiwi-icon.png",
  "assets/icons/orange-icon.png","assets/icons/Peach-icon.png","assets/icons/Cherry-icon.png",
  "assets/icons/Dragonfruit-icon.png","assets/icons/Blueberry-icon.png"];
  var frute=<String>["Apple","Mango","Grape","Banana","WaterMelon","Kiwi","Orange","Peach","Cherry","Dragonfruit","Blueberry"];
  var unit=<String>["Kg","Doz","Doz","Kg","Kg","Pc","Doz","Doz","Doz","Kg","Kg"];
  var prize=<int>[10,30,8,10,25,40,15,20,30,35,13];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Product List"),
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.shopping_cart),
      ],
    ),
    body: ListView.custom(
      childrenDelegate: SliverChildListDelegate(
        List.generate(11, (index) {
          return Card(
        color: Color.fromARGB(255, 205, 205, 212),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
              Image(image: AssetImage(fruiticon[index]),height: 100,width: 100,),
             SizedBox(
              width: 120,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    
                    text:  TextSpan(
                      text: "Name :",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: frute[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]
             
                    )),
                    RichText(
                    maxLines: 1,
                    text:  TextSpan(
                      text: "Unit :",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: unit[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]
             
                    )),
                    RichText(
                    maxLines: 1,
                    text:  TextSpan(
                      text: "Price :",
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "\$${prize[index]}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]
             
                    )),
                    
                ],
                
               ),
             ),
             ElevatedButton(onPressed: (){}, child: Text("Add to Cart"),
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 32, 43, 49)),)

          ],
          

        ),
      );
        })
      )),
    
  );
  }

}