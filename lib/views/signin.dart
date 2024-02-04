import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/views/Homepage.dart';
import 'package:shopping_app/views/Signup_Screen.dart';
import 'package:shopping_app/widgets/Header%20.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          const apphead(),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  'assets/login-password.png',
                  height: Get.height * 0.5,
                  width: Get.width * 0.5,
                ),
                // const SizedBox(height: 20),
                // const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(SignupScreen());
                    },
                    child: const Text(
                      "Don't have an account? Sign Up",
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Mainhomescreen());
                  },
                  child: Container(
                    height: 56,
                    width: Get.width * 0.8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 157, 10, 255),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.lerp(Border.all(color: Colors.white),
                          Border.all(color: Colors.white), 0.5),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
