import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.buttonColor})
      : super(key: key);
  final String text;
  final void Function()? onPressed;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration:  BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12.0,
          ),
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child:  Text(
        text,
          style:const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
