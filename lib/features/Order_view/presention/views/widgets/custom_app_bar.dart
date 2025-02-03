import 'package:flutter/material.dart';
import 'package:foodapp/features/Home_view/presention/views/home_view.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 28,
              color: Color(0xff3C2F2F),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeView()),
              );
            },
          ),
          const Icon(
            Icons.search,
            size: 28,
            color: Color(0xff3C2F2F),
          ),
        ],
      ),
    );
  }
}
