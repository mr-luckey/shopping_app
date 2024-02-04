import 'package:flutter/material.dart';
import 'package:shopping_app/controllers/card-controller.dart';

class OfferCard extends StatelessWidget {
  final OfferCardController offerdata;

  const OfferCard({required this.offerdata});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(100),
          ),
      child: Card(
        // elevation: 10,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                offerdata.imageasset,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 200,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  '${offerdata.discountPercentage}% ',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "   " + offerdata.productName,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "       " + offerdata.description,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
