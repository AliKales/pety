import 'package:pet/common_libs.dart';
import 'package:pet/pages/main_page/main_page_view.dart';
import 'package:pet/styles/values.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/c_app_bar.dart';

part 'body/body.dart';
part 'body/bottom_widget.dart';
part 'body/page/page.dart';
part 'body/page/text.dart';
part 'body/page/image_widget.dart';

class PromoPageView extends StatefulWidget {
  const PromoPageView({super.key});

  @override
  State<PromoPageView> createState() => _PromoPageViewState();
}

class _PromoPageViewState extends State<PromoPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(context),
      body: const _Body(),
    );
  }
}
