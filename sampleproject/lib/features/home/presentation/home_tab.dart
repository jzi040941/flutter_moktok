

import 'package:flutter/material.dart';
import 'package:sampleproject/features/home/presentation/content_layer/content_layer.dart';
import 'package:sampleproject/features/home/presentation/control_layer/bottom_nav_bar.dart';
import 'package:sampleproject/features/home/presentation/control_layer/following_for_you_options.dart';
import 'package:sampleproject/features/home/presentation/user_page/user_page.dart';

///The [HomeContentBuilder] Widget will build the multiple pages, with their corresponding widgets,
///each page will contatin a video section, the profile senction, etc;

///the [FollowingForYouOptions] widget contains the top bottons "following" and "for You"
///which are responsible for setting which kind of stream of data the application will get

///[BottomNavBar] contains the bottom nav bar and its icons which help the user navigate

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    debugPrint("HomeTab Built");
    return PageView(
      children: <Widget>[
            Stack(children: <Widget>[

              ///Contains Video Elements
              Positioned.fill(child: HomeContentBuilder()),

              ///Botton which switches video stream
              Align(
                alignment: Alignment.topCenter,
                child: FollowingForYouOptions(),
              ), // Align

              ///BottomNavBar
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavBar(),
              ),
            ]),
          ///the user will be able to swipte into the UserPage for the specific context set up
          UserPage(),
      ],
    );
  }
}
