import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({Key? key, required this.mainText, required this.buttonText, required this.onPressed, required this.buttonColor}) : super(key: key);
  final String mainText;
  final String buttonText;
  final Color buttonColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
       mainText,
          style:const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
            onPressed:onPressed,
            child:  Text(
           buttonText,
              style: TextStyle(
                color: buttonColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ))
      ],
    );
  }
}
