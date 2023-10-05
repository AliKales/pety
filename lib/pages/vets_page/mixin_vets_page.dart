part of 'vets_page_view.dart';

mixin _MixinMainPage<T extends StatefulWidget> on State<T> {
  LatLng? latLng;

  @override
  void initState() {
    super.initState();

    _setLocation();
  }

  void _setLocation() {
    Position? p = LocalValues.position;
    if (p == null) return;

    latLng = LatLng(p.latitude, p.longitude);
  }
}
