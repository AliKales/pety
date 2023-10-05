import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet/pages/main_page/main_page_view.dart';
import 'package:pet/pages/promo_page/promo_page_view.dart';

abstract class PagePaths {
  PagePaths._();

  static String main = "/main";
  static String promo = "/promo";
}

final appRouter = GoRouter(
  initialLocation: PagePaths.promo,
  routes: [
    AppRoute(PagePaths.promo, const PromoPageView()),
    AppRoute(PagePaths.main, const MainPageView()),
  ],
);

class AppRoute extends GoRoute {
  AppRoute(String path, Widget child)
      : super(
          path: path,
          pageBuilder: (context, state) {
            if (Platform.isIOS) {
              return CupertinoPage(child: child);
            }
            return MaterialPage(child: child);
          },
        );
}
