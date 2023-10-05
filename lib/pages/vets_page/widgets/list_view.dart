part of '../vets_page_view.dart';

class _ListView extends StatefulWidget {
  const _ListView();

  @override
  State<_ListView> createState() => __ListViewState();
}

class __ListViewState extends State<_ListView> {
  final GlobalKey _keyAnimalCard = GlobalKey();

  List<MPet> _pets = [];

  double? _animalCardHeight;

  @override
  void initState() {
    super.initState();
    context.afterBuild((p0) => _afterBuild());
  }

  void _afterBuild() async {
    _animalCardHeight = _keyAnimalCard.currentContext?.size?.height;

    _pets = await CDatabase.getPets();

    setState(() {});
  }

  void _changeFav(int index, bool newValue) {
    _pets[index].isFav = newValue;
  }

  @override
  Widget build(BuildContext context) {
    return _animalCards();
  }

  Widget _animalCards() {
    if (_animalCardHeight != null) return _listViewAnimalCards();

    ///loading widget
    return SizedBox(
      key: _keyAnimalCard,
      child: AnimalCard(
        pet: MPet(id: "-1"),
      ).redacted(context: context, redact: true),
    );
  }

  Widget _listViewAnimalCards() {
    return SizedBox(
      height: _animalCardHeight! + (_animalCardHeight! * 0.05),
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimalCard(
            pet: _pets[index],
            onFavChange: (value) => _changeFav(index, value),
          ),
        ),
        itemCount: _pets.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
