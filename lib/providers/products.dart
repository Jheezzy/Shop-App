import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
//* The getter is to return a list of products

  void addProduct() {
    // _items.add(value);
    notifyListeners(); //This allows all my widgets that are listening to this class know about the updates I did to this class, they are then rebuilt and get the latest data
  }
}
//* This is the new method to tell all the listeners of this provider that new data is available

//* I return a copy because i don't want the original one to be mutable outside this widget when this class is called

//* When products change new data is available i have to call a new method to tell all the listeners of this provider that new data is available ,
//* for this I add a new method
//* The problem we have is if we change data in the class, how will we let all our widgets that are interested know about this?
//* that's why we mixin class change notifier
//* Next now is to start listening to this class and for that I need to provide this class first, I need to turn it into a data container
//* NOTE : I need to provide my class which I want to use from other widgets at the highest level of all the widgets that will be interested

//* I want to add a getter to be able to retrieve the elements in the list
//* then in the getter i'm supposed to return the item list
