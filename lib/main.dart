import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Pety",
      debugShowCheckedModeBanner: false,
      theme: _theme(),
      routerDelegate: appRouter.routerDelegate,
      routeInformationProvider: appRouter.routeInformationProvider,
      routeInformationParser: appRouter.routeInformationParser,
    );
  }

  ThemeData _theme() {
    const primary = Color(0xFFeb9c52);
    return ThemeData(
      fontFamily: "Roboto",
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
