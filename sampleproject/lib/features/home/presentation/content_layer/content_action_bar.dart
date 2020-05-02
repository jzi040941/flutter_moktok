


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sampleproject/features/home/presentation/content_layer/rotating_image_profile.dart';

import 'content_action_icon.dart';
import 'content_profile_image.dart';

class HomeContentActionBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        
        ContentProfileImage(
          margin: const EdgeInsets.only(bottom: 16),
        ),

        ContentIconAction(
          onTap: (){},
          margin: const EdgeInsets.only(bottom: 16),
          icon: Icon(FontAwesomeIcons.solidHeart, size: 40,),
          title: Text("250", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        ),

        ContentIconAction(
          onTap: (){},
          margin: const EdgeInsets.only(bottom: 16),
          icon: Icon(FontAwesomeIcons.solidCommentDots, size: 40,),
          title: Text("250", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        ),

        ContentIconAction(
          onTap: (){},
          margin: const EdgeInsets.only(bottom: 16),
          icon: Icon(FontAwesomeIcons.share, size: 40,),
          title: Text("250", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        ),

        SizedBox(height: 24,),

        RotatingImageProfile(),
    ],);
  }
}