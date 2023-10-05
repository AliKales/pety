part of 'map_widget.dart';

class _Map extends StatelessWidget {
  const _Map(this.latLngMe);

  final LatLng latLngMe;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(Values.radiusLarge),
      ),
      child: FlutterMap(
        options: MapOptions(
          center: latLngMe,
          zoom: 3,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: [
              CustomMarker(latLng: latLngMe, iconColor: Colors.red),
            ],
          )
        ],
      ),
    );
  }
}
