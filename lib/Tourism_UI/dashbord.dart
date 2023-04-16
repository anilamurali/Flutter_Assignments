import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/Tourism_UI/Data.dart';
import 'package:flutter_assignment_ui/Tourism_UI/places.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Place_Dashboard(),
        routes: {
          "places":(context)=>Place_Screen(),
        },
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Place_Dashboard extends StatefulWidget {
  const Place_Dashboard({Key? key}) : super(key: key);

  @override
  State<Place_Dashboard> createState() => _Place_DashboardState();
}

class _Place_DashboardState extends State<Place_Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                    height: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Places",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular",
                  style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 900,
              child: ListView(
                children: dummyData.map((place) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 130,
                            width: 380,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(place["image"]),
                                    colorFilter: ColorFilter.mode(place['color'].withOpacity(0.4), BlendMode.srcOver,)
                                )),

                            child: Stack(children: [
                              GestureDetector(
                                onTap: () => goToLoction(context, place["id"]),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 10,
                                child: Text(
                                  place["name"],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  goToLoction(BuildContext context, placeId) {
    Navigator.pushNamed(context, "places",arguments: placeId);
  }
}
