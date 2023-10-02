part of '../../promo_page_view.dart';

class _Page extends StatelessWidget {
  const _Page({
    required this.text,
    required this.text2,
    required this.url,
  });

  final String text;
  final String text2;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Values.paddingPage(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _ImageWidget(url: url),
          ),
          context.sizedBox(height: Values.paddingHeightSmallXX),
          _Text(text: text, text2: text2),
        ],
      ),
    );
  }
}
