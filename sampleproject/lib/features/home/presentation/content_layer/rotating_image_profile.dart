

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:sampleproject/core/widgets/circle_image_user.dart';

class RotatingImageProfile extends StatefulWidget {
  @override
  _RotatingImageProfileState createState() => _RotatingImageProfileState();
}

class _RotatingImageProfileState extends State<RotatingImageProfile>
    with SingleTickerProviderStateMixin {
  AnimationController _animationC;
  Animation _animation;

  Widget build(BuildContext context){
    debugPrint("Rotating"
    "gImageProfile Called");
    var w = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: _animation,
      child: Container(
        height: w / 7,
        width: w / 7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Container(
          padding: const EdgeInsets.all(17.00),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: CircleImageUser())
        ),
        builder: (context, child){
          return Transform.rotate(
            angle: _animation.value * 2.0 * math.pi,
            child: child,
          );
        },
      ); 
  }

  @override
  void initState(){
    _animationC = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
      )..repeat();

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationC)..addListener((){});

    super.initState();
  }

  @override
  void dispose(){
    _animationC.dispose();
    super.dispose();
  }

}