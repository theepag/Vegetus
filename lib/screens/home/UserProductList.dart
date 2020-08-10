import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/product.dart';

class UserProductList extends StatefulWidget {
  @override
  _UserProductListState createState() => _UserProductListState();
}

class _UserProductListState extends State<UserProductList> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<List<Product>>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("productType"),
        ),
        body: (products != null)
            ? ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  if (products[index].name == "Tomato") {
                    return Card(
                      child: ListTile(
                        leading: Image.asset('graphics/broccoli.png'),
                        title: Text(products[index].name),
                        subtitle:
                            Text(products[index].price.toString() + " Rs"),
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                })
            : Center(child: CircularProgressIndicator()));
  }
}
