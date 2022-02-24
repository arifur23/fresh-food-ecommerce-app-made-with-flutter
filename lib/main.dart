import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Widgets/bottom_navigation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  static String get title => 'Notes SQLite';
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white
      ),
    ),
    home: const NavigationWidget(),
  );
}

