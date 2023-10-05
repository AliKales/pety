import 'package:caroby/caroby.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

abstract class LocalValues {
  static Position? position;

  static TextStyle appBarTextStyle(BuildContext context) {
    return context.textTheme.displayMedium!.toBold;
  }

  static List<String> dogUrls = [
    "https://static.vecteezy.com/system/resources/previews/018/249/047/non_2x/cute-and-happy-dog-cartoon-characters-png.png",
    "https://static.vecteezy.com/system/resources/previews/024/272/998/original/3d-cute-dog-character-ai-generative-png.png",
    "https://static.vecteezy.com/system/resources/previews/018/871/808/non_2x/cute-and-happy-dog-cartoon-characters-png.png",
  ];
}
