import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';

class Customcontainerkinds extends StatelessWidget {
  const Customcontainerkinds({
    super.key,
    required this.text,
    required this.color,
    required this.textcolor,
  });
  final String text;
  final Color color, textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.robtomedian16.copyWith(color: textcolor),
        ),
      ),
    );
  }
}
