part of '../promo_page_view.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.sizedBox(height: Values.paddingHeightSmallX),
        Expanded(
          child: PageView(
            controller: _pageController,
            children: [
              _Page(
                text: "Heal your",
                text2: "Animal",
                url: Values.dogUrls.first,
              ),
              _Page(
                text: "Adopt an",
                text2: "Animal",
                url: Values.dogUrls[1],
              ),
              _Page(
                text: "Find an",
                text2: "Animal hotel",
                url: Values.dogUrls.last,
              ),
            ],
          ),
        ),
        context.sizedBox(height: Values.paddingHeightMediumXX),
        _BottomWidget(_pageController),
        context.sizedBox(height: Values.paddingHeightSmall),
      ],
    );
  }
}
