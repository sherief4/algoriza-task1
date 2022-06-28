import 'package:flutter/material.dart';

class DefaultTextFormField extends StatefulWidget {
  DefaultTextFormField(
      {Key? key,
      required this.label,
      this.validator,
      required this.inputType,
      this.suffixIcon,
      required this.isPassword,
      required this.hintText,
      required this.controller,})
      : super(key: key);
  final String label;
  final TextInputType inputType;
  bool isPassword;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final IconData? suffixIcon;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  void changeVisibility() {
    setState(() {
      widget.isPassword = !widget.isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          validator: widget.validator,
          controller: widget.controller,
          keyboardType: widget.inputType,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(widget.suffixIcon),
              onPressed: changeVisibility,
            ),
            hintText: widget.hintText,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
