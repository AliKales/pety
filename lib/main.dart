import 'package:pet/common_libs.dart';
import 'package:pet/pages/promo_page/promo_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pet',
        debugShowCheckedModeBanner: false,
        theme: _theme(),
        home: const PromoPageView());
  }

  ThemeData _theme() {
    const primary = Color(0xFFeb9c52);
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: primary,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: const MaterialStatePropertyAll(primary),
          backgroundColor: MaterialStatePropertyAll(
            primary.withOpacity(0.4),
          ),
        ),
      ),
      filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 16, horizontal: 18),
          ),
          backgroundColor: MaterialStatePropertyAll(Colors.black),
          textStyle: MaterialStatePropertyAll(
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      useMaterial3: true,
    );
  }
}
