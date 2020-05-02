import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class VideoContentPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var url = 
      "";

    var url2 = "";
    var url3 = "https://media0.giphy.com/media/WYEWpk4lRPDq0/giphy.gif";
    var url4 = "https://media2.giphy.com/media/5Whc5pUjK02f30sDQr/giphy.gif";
    return GestureDetector(
      onTap: (){
        //This will play or pause a video
      },
      child: ExtendedImage.network(
        url4,
        cache: true,
        fit: BoxFit.cover,
      )
    );
  }
}