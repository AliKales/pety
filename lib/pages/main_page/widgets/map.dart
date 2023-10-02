part of '../main_page_view.dart';

class _Map extends StatelessWidget {
  const _Map();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(Values.radiusLarge),
      ),
      child: FlutterMap(
        options: MapOptions(
          center: const LatLng(51.5, -0.09),
          zoom: 5,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
        ],
      ),
    );
  }
}
