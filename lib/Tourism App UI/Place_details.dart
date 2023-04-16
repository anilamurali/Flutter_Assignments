import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/data.dart';
import 'package:flutter_assignment_ui/Tourism%20App%20UI/drowerwidget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Place_Deatails_Screen(),
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}


class Place_Deatails_Screen extends StatelessWidget {
  const Place_Deatails_Screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
     final placeId=ModalRoute.of(context)?.settings.arguments;
     final place=myPlaces.firstWhere((element) => element["id"]==placeId);
     var imgg=[place['img1'],place['img2'],place['img3']];
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 5,right: 5),
                  child: Container(
                    height:100,

                    width: double.infinity,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${place["spot"]}",style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 50,
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                            image: NetworkImage(
                            place["image"]
                        )
                        )
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 90,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 15,
                        child: RatingBar.builder(
                          itemSize: 20,
                          initialRating: place["rating"],
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) =>   const Icon(
                            Icons.star,
                            color: Colors.amber,

                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 9,left: 2),
                        child: Text('${place['rating']} Rating',style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),

                      )
                    ],
                  ),
                )
              ],
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8,top: 15),
                child: Text('About Places',style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),

                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
              child: Text("${place["about"]}",
              textAlign: TextAlign.justify,style: const TextStyle(fontSize: 14),
    ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 15),
                child: Text('Special Facilities',style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [

                    MyIcon(Icons.car_crash_rounded, 'parking'),
                    MyIcon(Icons.support_agent, '24*7 Support'),
                    MyIcon(Icons.wifi, 'Free Wifi'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                child: CarouselSlider.builder(
                    itemCount: imgg.length,
                    itemBuilder: (BuildContext, index, realindex) {
                      return Container(
                        height: 600,
                        width: 700,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(imgg[index]))
                        ),
                        // child:  Image(
                        //   fit: BoxFit.cover,
                        //   image: NetworkImage(imgg[index]),
                        // ),
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
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 1,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )),

              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10,top: 15),
                child: Text('Special Facilities',style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Mychip("${place["price1"]}"),
                  Mychip("${place["price2"]}"),
                  Mychip("${place["price3"]}"),
                  Mychip("${place["price4"]}")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(onPressed: (){}, child: const Text("EXPLORE NOW"),
                    style: ElevatedButton.styleFrom(

                    )

                ),
              ),
            )

          ],

        )


      ) ,

    );
  }
}
