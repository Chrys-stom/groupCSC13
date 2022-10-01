// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';

double iconSize = 30;

WeedList weedList = WeedList(weeds: [
  Weed(
      offerDetails: [
        {Icon(Icons.camera, size: iconSize): "Start Observation"},
        {Icon(Icons.import_export, size: iconSize): "Import"}
      ],
      features: [
        {Icon(Icons.help, size: iconSize): "Help"},
        {Icon(Icons.details_rounded, size: iconSize): "About Us"},
      ],
      weedName: '',
      specifications: [])
]);

class WeedList {
  List<Weed> weeds;

  WeedList({
    required this.weeds,
  });
}

class Weed {
  String weedName;
  List<Map<Icon, String>> offerDetails;
  List<Map<Icon, String>> features;
  List<Map<Icon, Map<String, String>>> specifications;

  //constructor
  Weed(
      {required this.features,
      required this.offerDetails,
      required this.weedName,
      required this.specifications});
}
