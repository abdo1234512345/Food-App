import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/details.dart';

class CustomOrderButtom extends StatelessWidget {
  const CustomOrderButtom({
    super.key,
    required this.price,
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffEF2A39),
              minimumSize: Size(100, 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: Text(
            price,
            style: Styles.robtoregular18.copyWith(color: Color(0xffffffff)),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff3C2F2F),
              minimumSize: Size(220, 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Details()));
          },
          child: Text(
            'Order Now',
            style: Styles.robtoregular18.copyWith(color: Color(0xffffffff)),
          ),
        ),
      ],
    );
  }
}
