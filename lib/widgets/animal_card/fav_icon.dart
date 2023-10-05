part of 'animal_card.dart';

class _FavIcon extends StatefulWidget {
  const _FavIcon(this.isFav, {this.onFavChange});

  final bool isFav;
  final ValueChanged<bool>? onFavChange;

  @override
  State<_FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<_FavIcon> {
  late bool _isFav;

  @override
  void initState() {
    super.initState();
    _isFav = widget.isFav;
  }

  void _onTap() {
    setState(() {
      _isFav = !_isFav;
    });

    if (widget.onFavChange != null) widget.onFavChange!(_isFav);
  }

  IconData get _getIcon => _isFav ? Icons.favorite : Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return InkWellNoGlow(
      onTap: _onTap,
      child: Container(
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
        child: Icon(
          _getIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
