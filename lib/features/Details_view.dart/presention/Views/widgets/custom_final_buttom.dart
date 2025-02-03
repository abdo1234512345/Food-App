import 'package:flutter/material.dart';
import 'package:foodapp/core/utils/styles.dart';

class CustomFinalButton extends StatefulWidget {
  const CustomFinalButton({super.key});

  @override
  State<CustomFinalButton> createState() => _CustomFinalButtonState();
}

class _CustomFinalButtonState extends State<CustomFinalButton> {
  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Success Icon
                CircleAvatar(
                  backgroundColor: const Color(0xffEF2A39),
                  radius: 40,
                  child: const Icon(Icons.check, color: Colors.white, size: 50),
                ),
                const SizedBox(height: 20),
                // Success Message
                Text(
                  'Success !',
                  style: Styles.robtoregular18.copyWith(
                    color: const Color(0xffEF2A39),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                    'Your payment was successful.\nA receipt for this purchase has\nbeen sent to your email.',
                    textAlign: TextAlign.center,
                    style: Styles.robtomedian14
                        .copyWith(color: Color(0xff808080))),
                const SizedBox(height: 20),
                // Go Back Button
                SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEF2A39),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close dialog
                    },
                    child: Text(
                      'Go Back',
                      style: Styles.robtomedian18.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 19),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffEF2A39),
          minimumSize: const Size(220, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          _showSuccessDialog(context); // Show the success popup
        },
        child: Text(
          'Order Now',
          style: Styles.robtoregular18.copyWith(color: const Color(0xffffffff)),
        ),
      ),
    );
  }
}
