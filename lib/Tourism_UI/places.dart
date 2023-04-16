import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Tourism_UI/Data.dart';

class Place_Screen extends StatelessWidget {
  const Place_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeId=ModalRoute.of(context)?.settings.arguments;
    final place=dummyData.firstWhere((element) => element['id']==placeId);
    var img=[place['img1'],place['img2'],place['img3']];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(place['image']))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('${place['name']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${place['about']}',
              textAlign: TextAlign.justify,),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15,left: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Place to Visit',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: NetworkImage(place['img3']),
                                fit: BoxFit.fill
                            )
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: NetworkImage(place['img1']),
                                fit: BoxFit.fill
                            )
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: NetworkImage(place['img2']),
                                fit: BoxFit.fill
                            )
                        ),

                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
