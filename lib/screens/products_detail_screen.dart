import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Image.network(loadedProduct.imageUrl),
        ),
        SizedBox(height: 10),
        Text(
          loadedProduct.title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Text(
            loadedProduct.description,
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
        )
      ])),
    );
  }
}
