import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    Key? key,
    required this.title,
    required this.details,
    required this.centerImage,
  }) : super(key: key);

  final String title;
  final String details;
  final String centerImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          height: 300,
          width: 280,
          image: AssetImage(centerImage),
          fit: BoxFit.cover,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        Text(
          details,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
