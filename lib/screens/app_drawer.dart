import 'package:flutter/material.dart';

import './user_products_screen.dart';
import './orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(
          title: Text('Hello Friend!'),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          title: Text('Shop'),
          leading: Icon(Icons.shop),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Cart'),
          leading: Icon(Icons.shopping_cart),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
          },
        ),
        Divider(),
        ListTile(
          title: Text('Manage Items'),
          leading: Icon(Icons.edit),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(UserProductsScreen.routeName);
          },
        ),
        Divider(),
      ]),
    );
  }
}
