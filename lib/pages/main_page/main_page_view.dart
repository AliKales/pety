import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:pet/common_libs.dart';
import 'package:pet/styles/values.dart';
import 'package:pet/widgets/c_app_bar.dart';

import 'widgets/animal_card/animal_card.dart';

part 'mixin_main_page.dart';
part 'widgets/filter_icon.dart';
part 'widgets/map.dart';
part 'widgets/text_field.dart';
part 'widgets/title.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> with _MixinMainPage {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(context),
      body: Padding(
        padding: Values.paddingPage(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: _TextField(),
                ),
                _FilterIcon(),
              ],
            ),
            context.sizedBox(height: Values.paddingHeightSmallX),
            _animalCardHeight == null
                ? AnimalCard(key: _keyAnimalCard)
                : _listViewAnimalCards(),
            context.sizedBox(height: Values.paddingHeightSmallXX),
            const _Title(),
            const Expanded(
              child: _Map(),
            ),
            context.sizedBox(height: Values.paddingHeightSmallX),
          ],
        ),
      ),
    );
  }

  Widget _listViewAnimalCards() {
    return SizedBox(
      height: _animalCardHeight! + (_animalCardHeight! * 0.05),
      child: ListView.builder(
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: AnimalCard(),
        ),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
