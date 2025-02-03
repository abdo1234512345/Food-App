import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';

class Portioncounter extends StatefulWidget {
  const Portioncounter({super.key});

  @override
  State<Portioncounter> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Portioncounter> {
  final double spicyLevel = 2.5;
  int _portion = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Portion",
            style: Styles.robtomedian16.copyWith(
              color: Color(0xff3C2F2F),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCounterButton(Icons.remove, () {
              setState(() {
                if (_portion > 1) _portion--;
              });
            }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "$_portion",
                style: Styles.robtomedian18.copyWith(
                  color: Color(0xff3C2F2F),
                ),
              ),
            ),
            _buildCounterButton(Icons.add, () {
              setState(() {
                _portion++;
              });
            }),
          ],
        ),
      ],
    );
  }
}

Widget _buildCounterButton(IconData icon, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(14),
      backgroundColor: Color(0xffEF2A39),
      foregroundColor: Colors.white,
      elevation: 5,
    ),
    child: Icon(
      icon,
      size: 20,
      color: Colors.white,
    ),
  );
}
