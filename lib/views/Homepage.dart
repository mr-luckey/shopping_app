import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controllers/card-controller.dart';
import 'package:shopping_app/widgets/Category_bar.dart';
import 'package:shopping_app/widgets/Heading-main.dart';
import 'package:shopping_app/widgets/cards.dart';
import 'package:shopping_app/widgets/choice-bar.dart';
import 'package:shopping_app/widgets/offer-cards.dart';
import 'package:shopping_app/widgets/search-bar.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class Mainhomescreen extends StatelessWidget {
  const Mainhomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        SizedBox(height: Get.height * 0.02),
        mainbar(),
        SizedBox(height: Get.height * 0.02),
        serchbar(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: Get.width * 0.9,
                  child: card1(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: Get.width * 0.9,
                  child: card1(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: Get.width * 0.9,
                  child: card1(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        categorybar(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Most Popular',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'See All',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
            )
          ],
        ),
        fchoice(),

        // Container(width: Get.width, child: card1())
      ]),
    );
  }
}
