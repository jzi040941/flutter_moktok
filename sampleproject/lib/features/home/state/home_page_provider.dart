


import 'package:flutter/cupertino.dart';
import 'package:sampleproject/features/home/entities/content.dart';

class HomeTabP extends ChangeNotifier{
  final List<Context> mockContents = MockContent.getList;
  StreamFeed streamFeed = StreamFeed.following;
  BottomTab bottomTab = BottomTab.home;

  void setStreamFeed(StreamFeed streamFeed){
    debugPrint("seStream called current stream = ${this.streamFeed}, with $streamFeed");
    this.streamFeed = streamFeed;
    notifyListeners();
  }

  void setBottomTab(BottomTab bottomTab){
    this.bottomTab = bottomTab;
    notifyListeners();
  }

  void rebuild(){
    debugPrint("Rebuild called");
    notifyListeners();
  }
}

enum StreamFeed{
  following,
  forYou,
}

enum BottomTab{
  home,
  discover,
  input,
  inbox,
  profile,
}