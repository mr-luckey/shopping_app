import 'package:get/get.dart';

class Item {
  String name;
  double price;
  double rating;
  bool onSale;
  String category;
  String Image;

  Item({
    required this.name,
    required this.price,
    required this.rating,
    required this.onSale,
    required this.category,
    required this.Image,
  });
}

class ProductsController extends GetxController {
  final products = <Item>[
    Item(
      name: 'Product 1',
      category: 'Men',
      price: 10.99,
      rating: 4.5,
      onSale: true,
      Image: "assets/men1.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Women',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Accessories',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Accessories',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Women',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Women',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Women',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Women',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    Item(
      name: 'Product 2',
      category: 'Accessories',
      price: 19.99,
      rating: 3.8,
      onSale: false,
      Image: "assets/men2.jpeg",
    ),
    // Add more products here
  ].obs;

  final selectedCategory = 'All'.obs;

  List<Item> get filteredProducts {
    if (selectedCategory.value == 'All') {
      return products;
    } else {
      return products
          .where((product) => product.category == selectedCategory.value)
          .toList();
    }
  }
}
