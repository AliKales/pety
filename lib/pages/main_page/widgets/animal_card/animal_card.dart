import 'package:pet/common_libs.dart';

import '../../../../styles/values.dart';

part 'fav_icon.dart';
part 'image_widget.dart';
part 'location.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = 0.6.toDynamicWidth(context);
    return Container(
      width: width,
      margin: EdgeInsets.only(
        right: Values.paddingWidthSmall.toDynamicWidth(context),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(Values.radiusLarge),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ImageWidget(width),
          context.sizedBox(height: Values.paddingHeightSmallXX),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              context.sizedBox(width: Values.paddingWidthSmallX),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _Text1(),
                    const _Text2(),
                    const _Location(),
                    context.sizedBox(height: Values.paddingWidthSmallXX),
                  ],
                ),
              ),
              const _FavIcon(),
            ],
          ),
        ],
      ),
    );
  }
}

class _Text2 extends StatelessWidget {
  const _Text2();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Golden Retriever",
      style: context.textTheme.titleMedium,
    );
  }
}

class _Text1 extends StatelessWidget {
  const _Text1();

  @override
  Widget build(BuildContext context) {
    return Text(
      "Mike",
      style: context.textTheme.titleLarge!.toBold,
    );
  }
}
