import 'package:flutter/material.dart';
import 'package:sampleproject/features/discover/discover_tab.dart';
import 'package:sampleproject/features/home/presentation/home_tab.dart';
import 'package:sampleproject/features/home/presentation/control_layer/bottom_nav_bar.dart';
import 'package:sampleproject/features/home/presentation/user_page/user_page.dart';
import 'package:sampleproject/features/home/state/home_page_provider.dart';
import 'package:sampleproject/features/inbox/inbox_tab.dart';
import 'package:provider/provider.dart';


class LayoutManager extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Selector<HomeTabP, BottomTab>(
        selector: (_, homePageP)=> homePageP.bottomTab,
        builder: (context, bottomTab, child) {
          
          var isHome = bottomTab == BottomTab.home;

          return Stack(
            children: <Widget>[

              /// The following is still under constuction
              /// 
              /// TODO implement each tab
              ((){}()),
              
              
               
              ((){
                switch(bottomTab){
                  case BottomTab.home:
                    return HomeTab();
                    break;
                  case BottomTab.discover:
                    return DiscoverTab();
                    break;
                  case BottomTab.input:
                    return HomeTab();
                    break;
                  case BottomTab.inbox:
                    return InboxTab();
                    break;
                  case BottomTab.profile:
                    return UserPage();
                    break;
                }

                return HomeTab();   
              }()),

              ///The [BottomNavBar] bar is transparent ans always at the bottom
              isHome
              ? Container(height: 0, width: 0)
              :Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavBar(),
              ),
            ],
          );
        }
      ),
    );
  }
}