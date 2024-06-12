import 'package:catalog_app/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyAppDrawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 22, color: Colors.red),
        ),
      ),
    );
  }
}
