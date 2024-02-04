import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget categorybar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        width: Get.width * 0.05,
      ),
      CircleAvatar(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/woman-clothes.png'),
          ),
        ),
        radius: 30,
      ),
      SizedBox(
        width: Get.width * 0.05,
      ),
      CircleAvatar(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/shirt.png'),
          ),
        ),
        radius: 30,
      ),
      SizedBox(
        width: Get.width * 0.05,
      ),
      CircleAvatar(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/accessory.png'),
          ),
        ),
        radius: 30,
      ),
      SizedBox(
        width: Get.width * 0.05,
      ),
      CircleAvatar(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/device.png'),
          ),
        ),
        radius: 30,
      ),
      SizedBox(
        width: Get.width * 0.05,
      ),
    ],
  );
}
