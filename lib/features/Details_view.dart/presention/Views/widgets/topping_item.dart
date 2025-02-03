import 'package:flutter/material.dart';

class ToppingItem extends StatelessWidget {
  const ToppingItem({super.key, required this.image, required this.text});
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 15),
      child: Container(
        width: 90,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 60, // Adjusted to fit
                width: 88,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: const BoxDecoration(
                color: Color(0xFF3D2C29),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12, // Adjusted font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 15 - .5, // Adjusted size
                    backgroundColor: Color(0xffEF2A39),
                    child: Icon(Icons.add, color: Colors.white, size: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
