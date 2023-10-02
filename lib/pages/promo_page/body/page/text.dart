part of '../../promo_page_view.dart';

class _Text extends StatelessWidget {
  const _Text({
    required this.text,
    required this.text2,
    this.textStyle,
  });

  final String text;
  final String text2;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: textStyle ?? context.textTheme.displayMedium,
      TextSpan(
        text: "$text\n",
        children: [
          TextSpan(
            text: text2,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
