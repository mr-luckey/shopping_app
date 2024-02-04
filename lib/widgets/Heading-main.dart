import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainbar extends StatelessWidget {
  const mainbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/shopping.png'),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Danial",
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 80),
          Icon(
            Icons.light_mode,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.favorite,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
