import 'package:flutter/material.dart';
import 'package:get/get.dart';

class apphead extends StatelessWidget {
  const apphead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      color: Color.fromARGB(255, 157, 10, 255),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.light_mode,
              color: Colors.white,
            ),
            onPressed: () {
              /*   theme changin logic here  */
            },
          ),
          // const Text('Sign In'),
        ]),
      ),
    );
  }
}
