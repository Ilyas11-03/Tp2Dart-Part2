import 'package:catalog_app/Pages/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Pages/Home.page.dart';
import 'Pages/Products.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.themes[0],
      routes: {
        "/home": (context) => HomePage(),
        "/products": (context) => ProductsPage(),
      },
      initialRoute: "/home",
    );
  }
}
