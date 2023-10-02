part of 'main_page_view.dart';

mixin _MixinMainPage<T extends StatefulWidget> on State<T> {
  final GlobalKey _keyAnimalCard = GlobalKey();

  double? _animalCardHeight;

  @override
  void initState() {
    super.initState();
    context.afterBuild((p0) => _afterBuild());
  }

  void _afterBuild() {
    _animalCardHeight = _keyAnimalCard.currentContext?.size?.height;

    setState(() {});
  }
}
