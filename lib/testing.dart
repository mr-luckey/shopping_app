// import 'package:flutter/material.dart';
// import 'package:shopping_app/controllers/card-controller.dart';
// import 'package:stacked_card_carousel/stacked_card_carousel.dart';

// import 'widgets/offer-cards.dart';

// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key, required this.title});
//   final String title;

//   final List<Widget> fancyCards = <Widget>[
//     Container(
//       width: 200,
//       child: OfferCard(
//         offerdata: OfferCardController(
//           imageUrl:
//               'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//           discountPercentage: '20',
//           productName: 'Example Product',
//           description: 'Description of the product goes here.',
//         ),
//       ),
//     ),
//     Container(
//       width: 200,
//       child: OfferCard(
//         offerdata: OfferCardController(
//           imageUrl:
//               'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//           discountPercentage: '20',
//           productName: 'Example Product',
//           description: 'Description of the product goes here.',
//         ),
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: StackedCardCarousel(
//         items: fancyCards,
//       ),
//     );
//   }
// }
