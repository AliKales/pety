part of 'animal_card.dart';

class _ImageWidget extends StatelessWidget {
  const _ImageWidget(this.width);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      margin: EdgeInsets.all(
        Values.paddingWidthSmallX.toDynamicWidth(context),
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.primary.withOpacity(0.4),
        borderRadius: BorderRadius.all(
          Radius.circular(Values.radiusMedium),
        ),
      ),
      child: Image.network(LocalValues.dogUrls.first),
    );
  }
}
