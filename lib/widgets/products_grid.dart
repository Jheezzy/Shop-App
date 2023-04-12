import 'package:flutter/material.dart';
import 'package:font_testing/providers/products.dart';
import 'package:provider/provider.dart';

import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return ProductItem(
          products[index].id,
          products[index].title,
          products[index].imageUrl,
        );
      },
    );
  }
}

// mixin Agility {
//   void sitdown() {
//     print('Sitting down foo!');
//   }
// }
// mixin Height {
//   void sitdown() {
//     print('5\'4');
//   }
// }

// class Mammal {
//   void breathe() {
//     print('Breathe in...Breathe out');
//   }
// }

// class Person extends Mammal with Agility {
//   String name;
//   int age;

//   Person(this.name, this.age);

//   @override
//   void breathe() {
//     print('Overriden Ha Ha Ha');
//   }
// }

// void main() {
//   final pers = Person('Sam', 29);
//   print(pers);
//   pers.breathe();
//   pers.sitdown();
// }
