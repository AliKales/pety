part of '../main_page_view.dart';

class _Body extends StatefulWidget {
  const _Body(this.page);

  final int page;

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  late int _page;
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    _page = widget.page;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _Body oldWidget) {
    super.didUpdateWidget(oldWidget);
    _page = widget.page;
    _changePage();
  }

  void _changePage() {
    _controller.animateToPage(
      _page,
      duration: 200.toDuration,
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        VetsPageView(),
        VetsPageView(),
        VetsPageView(),
      ],
    );
  }
}
