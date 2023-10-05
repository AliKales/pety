import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CustomMarker extends Marker {
  CustomMarker({
    required LatLng latLng,
    Color iconColor = Colors.black,
  }) : super(
          point: latLng,
          builder: (context) {
            return Icon(
              Icons.location_on_rounded,
              color: iconColor,
            );
          },
        );
}
