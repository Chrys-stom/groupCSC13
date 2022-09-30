// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:provider/provider.dart';
import 'package:weed_detector/google_sign_in.dart';
import 'package:weed_detector/sign_in_screen.dart';

import 'package:weed_detector/weed.dart';

class Body extends StatelessWidget {
  Body({super.key});
  var currentWeed = weedList.weeds[0];
  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 110;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 19, 8),
        title: const Text("WEED MASTER"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            child: const Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //Upper Container
          // ignore: sized_box_for_whitespace
          Container(
            height: 300,
            child: Stack(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/weed.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 15.0,
                  bottom: 30.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome to the weed master \n mobile application \n built to let you monitor weed \n growth in your garden",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),

                //joining container
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Lower Container
          SizedBox(
            height: 395.0,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: ListView(
                      children: [
                        offerDetails(sheetItemHeight),
                        features(sheetItemHeight),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  onSelected(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignIn(),
          ),
        );
    }
  }

  offerDetails(double sheetItemHeight) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentWeed.offerDetails.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => CameraPage()));
                    } else {
                      // ignore: avoid_print
                      print("Muwonge the reactists");
                    }
                  },
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: ListItem(
                      mapVal: currentWeed.offerDetails[index],
                      sheetItemHeight: 30,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  features(double sheetItemHeight) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentWeed.features.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      // ignore: avoid_print
                      print("Jonas is sturbon");
                    } else {
                      // ignore: avoid_print
                      print("Charles is home");
                    }
                  },
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: ListItem(
                      mapVal: currentWeed.features[index],
                      sheetItemHeight: 23,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class CameraPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CameraPage() : super();

  @override
  Widget build(BuildContext context) {
    return FlutterCamera(
      color: Colors.amber,
      onImageCaptured: (value) {
        final path = value.path;
        if (path.contains('.jpg')) {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog();
              });
        }
      },
    );
  }
}

class ListItem extends StatelessWidget {
  final double sheetItemHeight;
  final Map mapVal;

  const ListItem({
    super.key,
    required this.sheetItemHeight,
    required this.mapVal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 12, 49, 15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mapVal.keys.elementAt(0),
          Text(
            mapVal.values.elementAt(0),
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 23),
          )
        ],
      ),
    );
  }
}
