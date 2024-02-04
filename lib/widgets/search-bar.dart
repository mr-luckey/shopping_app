import 'package:flutter/material.dart';

class serchbar extends StatelessWidget {
  const serchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.format_align_center_rounded),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ));
  }
}
