import 'package:caroby/caroby.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:pet/core/c_database.dart';
import 'package:pet/core/models/m_pet.dart';
import 'package:pet/styles/local_values.dart';
import 'package:pet/widgets/map_widget/map_widget.dart';
import 'package:redacted/redacted.dart';

import '../../widgets/animal_card/animal_card.dart';

part 'mixin_vets_page.dart';
part 'widgets/filter_icon.dart';
part 'widgets/list_view.dart';
part 'widgets/text_field.dart';

class VetsPageView extends StatefulWidget {
  const VetsPageView({super.key});

  @override
  State<VetsPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<VetsPageView> with _MixinMainPage {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Values.paddingPage(context),
        child: SingleChildScrollView(
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
              const _ListView(),
              context.sizedBox(height: Values.paddingHeightSmallXX),
              MapWidget(
                  title: "Nearby Vets", latLng: latLng ?? const LatLng(0, 0)),
              context.sizedBox(height: Values.paddingHeightSmallX),
            ],
          ),
        ),
      ),
    );
  }
}
