import 'package:flutter/material.dart';
import 'package:sampleproject/features/home/entities/content.dart';
import 'package:sampleproject/features/home/presentation/content_layer/video_content_player.dart';
import 'package:sampleproject/features/home/state/home_page_provider.dart';
import 'package:provider/provider.dart';
import 'content_action_bar.dart';
//import 'content_username_description_song.dart';

class HomeContentBuilder extends StatefulWidget {
  @override
  _HomeContentBuilderState createState() => _HomeContentBuilderState();
}

class _HomeContentBuilderState extends State<HomeContentBuilder>{
  List<Context> mockContents;
  PageController _pageC;

  @override
  void initState(){
    _pageC = PageController();
    super.initState();
  }

  @override
  void dispose(){
    _pageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final homePageP = Provider.of<HomeTabP>(context, listen: false);

    mockContents = homePageP.mockContents;
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    var bottomHeight = h * 0.1 + 12;

    return PageView.builder(
      controller: _pageC,
      scrollDirection: Axis.vertical,
      itemCount: mockContents.length,
      itemBuilder: (context, i){

        return Stack(
          children: <Widget>[
            //Here lies the video background
            Positioned.fill(child: VideoContentPlayer()),

            ///here lies the action bar to the right, withe the spinning image, comments, likes share
            ///and so on
            
            Positioned(
              bottom: bottomHeight,
              right: 12,
              child: HomeContentActionBar(),
            ),

            ///Here lies the username, with the link and the description and song name
            Align(
              alignment: Alignment.bottomLeft,
              //child: ContentInfo,
            ),
          ],
        );
      });
  }
}