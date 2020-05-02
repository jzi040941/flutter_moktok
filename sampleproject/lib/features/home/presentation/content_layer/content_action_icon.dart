

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContentIconAction extends StatelessWidget {
  final Function onTap;
  final EdgeInsets margin;
  final Widget icon;
  final Widget title;

  ContentIconAction(
    {@required this.onTap,
    @required this.margin,
    @required this.icon,
    @required this.title}
  );

  @override
  Widget build(BuildContext context){
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: w/6,
        width: w/6,
        margin: margin ?? const EdgeInsets.all(12.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            title,
          ],),
      ),
    );
  }
}