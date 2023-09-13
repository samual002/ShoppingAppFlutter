import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './app_drawer.dart';
import '../providers/products.dart';
import '../widgets/user_products_item.dart';
import './edit_products_screen.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName='./manage-products';
  @override
  Widget build(BuildContext context) {
    final itemData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Products Screen'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){
            Navigator.of(context).pushNamed(EditProductsScreen.routeName);
          }),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (_, i) => Column(
          children: [
            UserProductsItem(
              itemData.items[i].id,
              itemData.items[i].title,
              itemData.items[i].imageUrl,
            ),
            Divider(),
          ],
        ),
        itemCount: itemData.items.length,
      ),
    );
  }
}
