import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controllers/product-card-controller.dart';
import '../controllers/button-controller.dart';
import '../views/testcategory.dart';

class MenuButton extends StatelessWidget {
  final String label;
  final WidgetBuilder builder;
  final controllerd = Get.put(ButtonControllers());
  final cont = Get.put(ButtonController());

  MenuButton({
    required this.label,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonController>(
      init: ButtonController(),
      builder: (controller) => Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ElevatedButton(
          onPressed: () {
            controllerd.toggleSelected(label);
            cont.toggleColor();
            // Perform additional actions when the button is pressed
            // For example, you can navigate to another screen:
            // Navigator.push(context, MaterialPageRoute(builder: builder));
          },
          style: ElevatedButton.styleFrom(
            primary:
                controllerd.isSelected(label) ? Colors.black : Colors.white,
            onPrimary:
                controllerd.isSelected(label) ? Colors.white : Colors.black,
          ),
          child: Text(
            '$label',
            style: TextStyle(
              color:
                  controllerd.isSelected(label) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

Widget fchoice() {
  final controlproduct = Get.put(ProductsController());
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () => controlproduct.selectedCategory.value = 'All',
            child: Text('All'),
          ),
          ElevatedButton(
            onPressed: () => controlproduct.selectedCategory.value = 'Men',
            child: Text('Men'),
          ),
          ElevatedButton(
            onPressed: () => controlproduct.selectedCategory.value = 'Women',
            child: Text('Women'),
          ),
          ElevatedButton(
            onPressed: () =>
                controlproduct.selectedCategory.value = 'Accessories',
            child: Text('Accessories'),
          ),
        ],
      ),
      Container(
        width: Get.width,
        height: Get.height,
        child: Obx(
          () => GridView.count(
            crossAxisCount: 2,
            children: controlproduct.filteredProducts.map((product) {
              return Card(
                child: Stack(
                  children: [
                    SizedBox(
                      height: Get.height,
                      width: Get.width,
                      child: Image.asset(
                        product.Image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Image.asset(product.Image),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 56,
                        width: Get.width,
                        color: Colors.white70,
                        child: Stack(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(product.name),
                            Column(
                              children: [
                                Text(
                                  '\$${product.price}',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                Text("(100+ Sold)"),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  product.rating.toString(),
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            // if (product.onSale) Text('On Sale'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ],
  );
}
