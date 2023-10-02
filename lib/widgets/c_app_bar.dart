import 'package:pet/common_libs.dart';
import 'package:pet/styles/values.dart';

class CAppBar extends AppBar {
  CAppBar(
    BuildContext context, {
    super.key,
    List<Widget>? actions,
  }) : super(
          title: Text("Pety.", style: Values.appBarTextStyle(context)),
          centerTitle: false,
          actions: actions,
        );
}
