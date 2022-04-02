import 'package:flutter/material.dart';

class DonationCategory {
  DonationCategory(
      {Key? key,
      required this.position,
      required this.name,
      required this.iconImage,
      required this.description,
      required this.images,
      required this.route,
      required this.url});

  int position;
  String name;
  String iconImage;
  String description;
  List<String> images;
  List<String> route;
  Uri url;
}
