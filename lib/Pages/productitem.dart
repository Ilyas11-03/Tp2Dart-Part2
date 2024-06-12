import 'package:catalog_app/Pages/products.details.dart';
import 'package:flutter/material.dart';

class Productitem extends StatelessWidget {
  final dynamic product;
  final bool details;
  Productitem({Key? key, required this.product, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        title: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Card(
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${product['name']}"),
                          Text("MAD${product["price"]}"),
                          if (product["promotion"] == true)
                            const Icon(
                              Icons.heart_broken,
                              color: Colors.red,
                            ),
                          Row(
                            children: [
                              for (int i = 0; i < product["stars"]; i++)
                                Icon(Icons.star, color: Colors.yellow)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductsDetails(
                                    productsId: product['id'],
                                  )));
                    },
                    child: Image(
                        width: 200, image: AssetImage("${product['image']}")),
                  )
                ],
              ),
            ),
            if (details == true)
              Card(
                child: Text("${[product['description']]}"),
              )
          ]),
        ));
    ;
  }
}
