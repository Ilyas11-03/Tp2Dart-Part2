import 'dart:convert';
import 'package:catalog_app/Pages/productitem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsDetails extends StatefulWidget {
  final int productsId;
  ProductsDetails({Key? key, required this.productsId}) : super(key: key);

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  dynamic product;
  @override
  void initState() {
    super.initState();
    http
        .get(Uri.parse("http://172.20.80.1:3000/products/${widget.productsId}"))
        .then((resp) {
      setState(() {
        //regenerer le rendu
        product = json.decode(resp.body);
      });
    }).catchError((err) {
      print("******* Error ********");
      print(err);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products details => ${widget.productsId}"),
      ),
      body: Center(
        child: Productitem(
          product: product,
          details: false,
        ),
      ),
    );
  }
}
