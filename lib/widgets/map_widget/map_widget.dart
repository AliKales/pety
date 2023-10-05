import 'package:caroby/caroby.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:pet/widgets/map_widget/custom_marker.dart';

part 'map.dart';
part 'title.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key, required this.title, required this.latLng});

  final String title;
  final LatLng latLng;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _Title(),
        SizedBox(
          height: context.width,
          child: _Map(latLng),
        ),
      ],
    );
  }
}
