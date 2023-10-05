part of 'animal_card.dart';

class _Location extends StatelessWidget {
  const _Location();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.pin_drop_outlined,
          color: context.colorScheme.primary,
        ),
        Text(
          "Riga LV",
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
