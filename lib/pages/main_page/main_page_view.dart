import 'package:caroby/caroby.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet/core/riverpod/r_page.dart';
import 'package:pet/pages/main_page/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:pet/pages/vets_page/vets_page_view.dart';

import '../../widgets/c_app_bar.dart';

part 'body/body.dart';

class MainPageView extends ConsumerWidget {
  const MainPageView({super.key});

  void _onBottomNavBarTap(WidgetRef ref, int index) {
    ref.read(rPage.notifier).state = index;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(rPage);
    return Scaffold(
      appBar: CAppBar(context),
      body: _Body(page),
      bottomNavigationBar: BottomNavBar(
        page: page,
        onTap: (value) => _onBottomNavBarTap(ref, value),
      ),
    );
  }
}
