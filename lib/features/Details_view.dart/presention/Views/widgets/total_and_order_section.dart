import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';
import 'package:foodapp/features/Details_view.dart/presention/Views/widgets/custom_final_buttom.dart';

class TotalandOrder extends StatelessWidget {
  const TotalandOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Column(
            children: [
              Text(
                "Total",
                style: Styles.robtomedian18.copyWith(
                    color: Color(0xff3C2F2F), fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 5),
              Text(
                r"$16.49",
                style: Styles.robtomedian18.copyWith(
                    color: Color(0xff3C2F2F),
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
              )
            ],
          ),
        ),
        CustomFinalButton()
      ],
    );
  }
}
