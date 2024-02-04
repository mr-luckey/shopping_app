import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/views/signin.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 120),
          Image.asset(
            'assets/shopping.png',
            height: 300,
            width: 300,
          ),
          SizedBox(height: 100),
          const Text("Welcome to Shopping App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: GestureDetector(
              onTap: () {
                Get.to(signin());
              },
              child: Container(
                height: 56,
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 157, 10, 255),
                  borderRadius: BorderRadius.circular(30),
                  border: BoxBorder.lerp(Border.all(color: Colors.white),
                      Border.all(color: Colors.white), 0.5),
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
