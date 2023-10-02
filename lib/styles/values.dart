import 'package:pet/common_libs.dart';

abstract class Values {
  static double dotSize = 0.03;

  static double messageBoxMaxWidth = 0.7;

  static double languageLinearWidth = 0.18;
  static double languageLinearHeight = 0.013;

  static double languageLinearSmallWidth = 0.05;
  static double languageLinearSmallHeight = 0.008;

  static double meetBioTextWidth = 0.68;

  static double bottomNavBarPaddingY = 0.020;
  static double bottomNavBarBorder = 1;
  static double bottomNavBarPointerHeight = 0.005;
  static double bottomNavBarPointerRadius = 20;
  static double bottomNavBarPointerPaddingX = 0.02;
  static double bottomNavBarIconSize = 24;

  static double profilePicMessageWidget = 0.1;
  static double profilePicSmall = 0.15;
  static double profilePicSmallX = 0.1;
  static double profilePicMedium = 0.2;
  static double profilePicLarge = 0.5;

  static double chatSeparatorPaddingX = profilePicSmall + 0.05;
  static double chatSeparatorPaddingY = 0.005;

  static double paddingWidthSmallXXX = 0.005;
  static double paddingWidthSmallXX = 0.01;
  static double paddingWidthSmallX = 0.02;
  static double paddingWidthSmall = 0.05;
  static double paddingWidthMedium = 0.08;

  static double paddingHeightSmallXXX = 0.005;
  static double paddingHeightSmallXX = 0.01;
  static double paddingHeightSmallX = 0.03;
  static double paddingHeightSmall = 0.05;
  static double paddingHeightMedium = 0.1;
  static double paddingHeightMediumX = 0.13;
  static double paddingHeightMediumXX = 0.15;
  static double paddingHeightLarge = 0.2;

  static double radiusSmallX = 5;
  static double radiusSmall = 10;
  static double radiusMedium = 15;
  static double radiusLarge = 20;
  static double radiusLargeX = 25;

  static double svgLargeWidth = 0.6;

  static double settingsItemHeight = 0.08;

  static double socialPostMinHeight = 0.3;

  static double paddingsTitleWithChips = 0.02;

  static double paddingPageValue = 0.04;

  static double colorSchemeWidgetWidth = 0.4;

  static int sizePictureSmall = 200;

  static TextStyle appBarTextStyle(BuildContext context) {
    return context.textTheme.displayMedium!.toBold;
  }

  static Size sizeVipDialog(BuildContext context) {
    final width = 0.65.toDynamicWidth(context);
    final height = 0.45.toDynamicHeight(context);
    return Size(width, height);
  }

  static Size sizeSongThumbnail(BuildContext context) => Size(
        0.39.toDynamicWidth(context),
        0.31.toDynamicWidth(context),
      );

  static Size sizeImageMessageMedium(BuildContext context) => Size(
        0.2.toDynamicWidth(context),
        0.2.toDynamicWidth(context),
      );

  static Size sizeImageMessageSmall(BuildContext context) => Size(
        0.15.toDynamicWidth(context),
        0.15.toDynamicWidth(context),
      );

  static EdgeInsets paddingPage(BuildContext context) => EdgeInsets.symmetric(
      horizontal: paddingPageValue.toDynamicWidth(context));

  static EdgeInsets paddingMessageWidget(BuildContext context) =>
      EdgeInsets.symmetric(
        horizontal: 0.03.toDynamicWidth(context),
        vertical: 0.015.toDynamicHeight(context),
      );

  static EdgeInsets paddingVip =
      const EdgeInsets.symmetric(horizontal: 2, vertical: 1);

  static EdgeInsets meetSeparatorPadding(BuildContext context) =>
      EdgeInsets.fromLTRB(0.22.toDynamicWidth(context),
          0.01.toDynamicHeight(context), 0, 0.02.toDynamicHeight(context));

  static EdgeInsets paddingCustomChip(BuildContext context) =>
      EdgeInsets.symmetric(
          horizontal: 0.05.toDynamicWidth(context), vertical: 2.5);

  static EdgeInsets paddingButton(BuildContext context) =>
      const EdgeInsets.symmetric(vertical: 12.0);

  static List<String> dogUrls = [
    "https://static.vecteezy.com/system/resources/previews/018/249/047/non_2x/cute-and-happy-dog-cartoon-characters-png.png",
    "https://static.vecteezy.com/system/resources/previews/024/272/998/original/3d-cute-dog-character-ai-generative-png.png",
    "https://static.vecteezy.com/system/resources/previews/018/871/808/non_2x/cute-and-happy-dog-cartoon-characters-png.png",
  ];
}
