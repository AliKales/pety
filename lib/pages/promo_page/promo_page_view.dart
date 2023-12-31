import 'package:caroby/caroby.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet/core/utils.dart';
import 'package:pet/router.dart';
import 'package:pet/styles/local_values.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/c_app_bar.dart';

part 'body/body.dart';
part 'body/bottom_widget.dart';
part 'body/page/image_widget.dart';
part 'body/page/page.dart';
part 'body/page/text.dart';

class PromoPageView extends StatefulWidget {
  const PromoPageView({super.key});

  @override
  State<PromoPageView> createState() => _PromoPageViewState();
}

class _PromoPageViewState extends State<PromoPageView> {
  @override
  void initState() {
    super.initState();
    context.afterBuild((p0) => _getLocation());
  }

  Future<void> _getLocation() async {
    var position = await LocalUtils.getLocation();

    LocalValues.position = position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(context),
      body: const _Body(),
    );
  }
}
