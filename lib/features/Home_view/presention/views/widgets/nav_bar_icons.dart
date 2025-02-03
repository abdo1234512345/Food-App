import 'package:flutter/material.dart';

class NavBarIcons extends StatelessWidget {
  const NavBarIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 40), // Space for FAB
        IconButton(
          icon: Icon(
            Icons.article,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
