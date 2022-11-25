import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final iconPlaceholder;
  final String home;

  HomeWidget({required this.iconPlaceholder, required this.home});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blueGrey,
        ),
        child: Row(
          children: [
            Icon(iconPlaceholder),
            SizedBox(
              width: 18,
            ),
            Text(
              home,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
