import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Shopo',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ProductsGrid(),
    );
  }
}


























//* I want to render a grid of products, therefore i need a grid and the products
//* I want to define how a product should look like so i create a product model
//* so that i can build products based on this definition

//* In the products_overview_screen I want to add a couple of products and for that
//* i create a list of product so that I have some products to start with in this project


//* In the body of scaffold is return a gridview.builder, then provide necessary info
//* In childAspectRatio where we used 3/2 the height is 3 and width is 2, meaning it should be 3 times higher than wide

//* For the widget that should be returned in the itemBuilder we can create a new widget to make our widget tree leaner

