part of '../../promo_page_view.dart';

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.width,
      decoration: BoxDecoration(
        color: context.colorScheme.primary.withOpacity(0.4),
        borderRadius: BorderRadius.all(
          Radius.circular(Values.radiusLargeX),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Values.paddingWidthSmall.toDynamicWidth(context),
              vertical: Values.paddingHeightSmallXX.toDynamicHeight(context),
            ),
            child: _Text(
              text: "Find a vet",
              text2: "close to you!",
              textStyle: context.textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: Image.network(
              url,
            ).centerAlign,
          ),
        ],
      ),
    );
  }
}
