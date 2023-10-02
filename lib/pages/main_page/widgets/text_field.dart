part of '../main_page_view.dart';

class _TextField extends StatelessWidget {
  const _TextField();

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: "Search..",
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
