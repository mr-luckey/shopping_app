import 'package:flutter/material.dart';
import 'package:shopping_app/controllers/card-controller.dart';
import 'package:shopping_app/widgets/offer-cards.dart';

Widget card1() {
  return OfferCard(
    offerdata: OfferCardController(
      imageasset: 'assets/headphones.png',
      discountPercentage: '20',
      productName: 'Today\'s Offer',
      description: 'Avail 20% off on \n       headphones.',
    ),
  );
}

Widget card2() {
  return OfferCard(
    offerdata: OfferCardController(
      imageasset: 'assets/headphones.png',
      discountPercentage: '20',
      productName: 'Example Product',
      description: 'Description of \nthe product goes here.',
    ),
  );
}

Widget card3() {
  return OfferCard(
    offerdata: OfferCardController(
      imageasset: 'assets/headphones.png',
      // 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      discountPercentage: '20',
      productName: 'Example Product',
      description: 'Description of \nthe product goes here.',
    ),
  );
}
