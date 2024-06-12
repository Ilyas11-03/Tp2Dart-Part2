import 'dart:convert';
import 'package:catalog_app/Pages/productitem.dart';
import 'package:catalog_app/Pages/products.details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://172.20.80.1:3000/products")).then((resp) {
      setState(() {
        //regenerer le rendu
        products = json.decode(resp.body);
      });
    }).catchError((err) {
      print("******* Error ********");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Products"),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Productitem(
                product: products[index],
                details: true,
              );
            }));
  }
}
