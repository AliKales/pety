import 'package:flutter/material.dart';
import 'package:pet/styles/local_values.dart';

class CAppBar extends AppBar {
  CAppBar(
    BuildContext context, {
    super.key,
    List<Widget>? actions,
  }) : super(
          title: Text("Pety.", style: LocalValues.appBarTextStyle(context)),
          centerTitle: false,
          actions: actions,
        );
}
