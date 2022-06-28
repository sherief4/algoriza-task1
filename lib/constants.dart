
import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xffffffff);
Color secondaryColor = const Color(0xfffaf2e7);
Color myOrange = const Color(0xffe7bb7e);

void navigateTo(BuildContext context, Widget route){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return route;
  }));

}