import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/thana.dart';

class HomeController extends GetxController implements GetxService {
  HomeController();

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  setPageIndex(int pageIndex) {
    if (_pageController.hasClients) {
      _pageController.jumpToPage(pageIndex);
    }
    _pageIndex = pageIndex;
    update();
  }

  PageController _pageController = PageController();
  PageController get pageController => _pageController;

  initPageIndex(int initialIndex) {
    _pageController = PageController(initialPage: initialIndex);
  }

  // disposeController(){
  //   _pageController.dispose();
  // }
  @override
  void onClose() {
    _pageController.dispose();
    super.onClose();
  }


  List<Thana> _thanas = [];
  List<Thana> get thanas=> _thanas;

  void getAllThana() {
    _thanas = [
      Thana(id: 1, name: "চান্দগাঁও থানা", location: "22.3703, 91.8480"),
      Thana(id: 2, name: "বন্দর থানা", location: "22.3120, 91.7928"),
      Thana(id: 3, name: "ডবলমুরিং থানা", location: "22.3475, 91.8193"),
      Thana(id: 4, name: "কোতোয়ালি থানা", location: "22.3435, 91.8359"),
      Thana(id: 5, name: "পাহাড়তলী থানা", location: "22.3740, 91.8099"),
      Thana(id: 6, name: "পাঁচলাইস থানা", location: "22.3638, 91.8399"),
      Thana(id: 7, name: "বায়েজিদ বোস্তামী থানা", location: "22.3875, 91.8348"),
      Thana(id: 8, name: "পতেঙ্গা থানা", location: "22.2731, 91.7911"),
      Thana(id: 9, name: "হালিশহর থানা", location: "22.3070, 91.7873"),
      Thana(id: 10, name: "খুলশী থানা", location: "22.3613, 91.8313"),
      Thana(id: 11, name: "বাকলিয়া থানা", location: "22.3267, 91.8374"),
      Thana(id: 12, name: "কর্ণফুলী থানা", location: "22.2484, 91.8277"),
      Thana(id: 13, name: "চকবাজার থানা", location: "22.3384, 91.8437"),
      Thana(id: 14, name: "আকবর শাহ থানা", location: "22.3940, 91.7999"),
      Thana(id: 15, name: "সদরঘাট থানা", location: "22.3087, 91.8467"),
      Thana(id: 16, name: "ইপিজেড থানা", location: "22.2876, 91.7464"),
    ];

    update();
  }
}
