import 'package:flutter/material.dart';
import 'package:sampleproject/core/widgets/circle_image_user.dart';

class ContentProfileImage extends StatelessWidget {
  final EdgeInsets margin;
  final String imageUrl;
  final Function onTap;

  ContentProfileImage({@required this.imageUrl, this.margin, this.onTap});

  @override
  Widget build(BuildContext context){
    final double w = MediaQuery.of(context).size.width;
    String url;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: w / 5.5,
        width: w / 5.5,
        margin: margin,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.all(8.00),
                decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              )),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(9.50),
                child: CircleImageUser(profileImageUrl: url))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: w / 20,
                width: w / 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: w/20,
                ),
              )
            )
          ],
          )
      ),);
  }
}