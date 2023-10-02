part of 'animal_card.dart';

class _FavIcon extends StatelessWidget {
  const _FavIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Values.radiusLarge),
          bottomRight: Radius.circular(Values.radiusLarge),
        ),
      ),
      padding: EdgeInsets.all(
        Values.paddingWidthSmallX.toDynamicWidth(context),
      ),
      child: const Icon(
        Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
