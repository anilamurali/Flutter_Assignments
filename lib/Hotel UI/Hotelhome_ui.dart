import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HotelHome_UI(),
        //theme: ThemeData(primarySwatch: Colors.blueGrey),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class HotelHome_UI extends StatelessWidget {
  const HotelHome_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
                color: Colors.cyan,
                child: Column(
                  children:  [
                    const Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Center(
                        child: Text("Type your Location ",style: TextStyle(fontSize: 22,
                        color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    searchBox()
                  ],
                ),
              ),
              const Positioned(
                  left: 13,
                  top: 30,
                  child: Icon(Icons.menu,
                  color: Colors.white,)),
              const Positioned(
                  right: 13,
                  top: 30,
                  child: FaIcon(FontAwesomeIcons.heart,
                  color: Colors.white,))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyIcon("Hotel", Colors.red, Icons.hotel),
                  MyIcon("Restaurant", Colors.blue, Icons.restaurant),
                  MyIcon("Cafe", Colors.orange, Icons.local_cafe_rounded)
                ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: NetworkImage('data:image/jpeg;base64,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',
                        ),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              ),
              const Positioned(
                  right: 20,
                  top: 23,
                  child: FaIcon(FontAwesomeIcons.star,color: Colors.white,)),
              Positioned(
                right: 25,
                top: 220,
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(3)
                  ),
                  child: const Center(child: Text('\$100')),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 25),
            child: Container(

              width: double.infinity,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Awesome room near Munnar ',style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Munnar,Kerala',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),),
                    ),
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 25,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      
                      const Text('(220 Reviews)')

                        ],
                  )
                ],
              ),
            ),
          )
        ],
      ) ,
    );
  }
}
Widget searchBox() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          prefixIcon: Icon(
            Icons.search,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Munnar/kerala',

        ),
      ),
    ),
  );
}
class MyIcon extends StatelessWidget {
  final String title;
  final Color _colors;
  final IconData icons;
   MyIcon(this.title,
     this._colors, this.icons);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _colors,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(icons,color: Colors.white,)),
          Center(child: Text(title,style: const TextStyle(color: Colors.white),),)
        ],
      ),
    );
  }
}

