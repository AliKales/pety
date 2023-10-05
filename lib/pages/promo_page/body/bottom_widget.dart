part of '../promo_page_view.dart';

class _BottomWidget extends StatelessWidget {
  const _BottomWidget(this.controller);

  final PageController controller;

  void _onGetStarted(BuildContext context) {
    context.go(PagePaths.main);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Values.paddingPage(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: context.colorScheme.primary,
            ),
          ),
          FilledButton(
            onPressed: () => _onGetStarted(context),
            child: const Text(
              "Get Started",
            ),
          )
        ],
      ),
    );
  }
}
