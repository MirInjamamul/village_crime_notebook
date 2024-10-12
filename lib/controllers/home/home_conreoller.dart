import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:village_crime/models/division.dart';

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
    Thana(
    id: 1,
    name: "চান্দগাঁও থানা",
    location: "Chandgaon, Chittagong, Bangladesh",
    wards: [
      Ward(id: 1, name: "৪নং চান্দগাঁও ওয়ার্ড", location: "Chandgaon Ward 4, Chittagong"),
      Ward(id: 2, name: "৫নং মোহরা ওয়ার্ড", location: "Mohora Ward 5, Chittagong"),
      Ward(id: 3, name: "৬নং ষোলশহর ওয়ার্ড", location: "Sholoshahar Ward 6, Chittagong"),
    ],
    ),
    Thana(
    id: 2,
    name: "চট্টগ্রাম বন্দর থানা",
    location: "Bandar, Chittagong, Bangladesh",
    wards: [
      Ward(id: 4, name: "৩৬নং গোসাইলডাঙ্গা ওয়ার্ড", location: "Gosaildanga Ward 36, Chittagong"),
      Ward(id: 5, name: "৩৭নং উত্তর মধ্যে হালিশহর ওয়ার্ড", location: "Uttor Madhya Halishahar Ward 37, Chittagong"),
      Ward(id: 6, name: "৩৮নং দক্ষিণ মধ্যে হালিশহর ওয়ার্ড", location: "Dokkhin Madhya Halishahar Ward 38, Chittagong"),
    ],
    ),
    Thana(
    id: 3,
    name: "ডাবলমুরিং থানা",
    location: "Double Mooring, Chittagong, Bangladesh",
    wards: [
      Ward(id: 7, name: "১২নং সরাইপাড়া ওয়ার্ড", location: "Saraipara Ward 12, Chittagong"),
      Ward(id: 8, name: "২৩নং উত্তর পাঠানপুলী ওয়ার্ড", location: "Uttor Pathanpuli Ward 23, Chittagong"),
      Ward(id: 9, name: "২৪নং উত্তর আগ্রাবাদ ওয়ার্ড", location: "Uttor Agrabad Ward 24, Chittagong"),
      Ward(id: 10, name: "২৭ নং দক্ষিণ আগ্রাবাদ ওয়ার্ড", location: "Dokkhin Agrabad Ward 27, Chittagong"),
      Ward(id: 11, name: "২৮ নং পাঠানপুলী ওয়ার্ড", location: "Pathanpuli Ward 28, Chittagong"),
      Ward(id: 12, name: "৩৬নং গোসাইলডাঙ্গা ওয়ার্ড", location: "Gosaildanga Ward 36, Chittagong"),
    ],
    ),
    Thana(
    id: 4,
    name: "কোতোয়ালি থানা",
    location: "Kotwali, Chittagong, Bangladesh",
    wards: [
      Ward(id: 13, name: "১৫নং বাগমনিরাম ওয়ার্ড", location: "Bagmoniram Ward 15, Chittagong"),
      Ward(id: 14, name: "২০নং দেওয়ান বাজার ওয়ার্ড", location: "Dewanbazar Ward 20, Chittagong"),
      Ward(id: 15, name: "২১নং জামালখান ওয়ার্ড", location: "Jamalkhan Ward 21, Chittagong"),
      Ward(id: 16, name: "২২নং এনায়েত বাজার ওয়ার্ড", location: "Enayet Bazar Ward 22, Chittagong"),
      Ward(id: 17, name: "৩১নং আলকরণ ওয়ার্ড", location: "Alkaran Ward 31, Chittagong"),
      Ward(id: 18, name: "৩২নং আন্দরকিল্লা ওয়ার্ড", location: "Anderkilla Ward 32, Chittagong"),
      Ward(id: 19, name: "৩৪নং পাথরঘাটা ওয়ার্ড", location: "Patharghata Ward 34, Chittagong"),
      Ward(id: 20, name: "২৫নং বকশীরহাট ওয়ার্ড", location: "Bakshirhat Ward 25, Chittagong"),
    ],
    ),
    Thana(
    id: 5,
    name: "পাহাড়তলী থানা",
    location: "Pahartali, Chittagong, Bangladesh",
    wards: [
      Ward(id: 21, name: "১০নং উত্তর কাট্টলি ওয়ার্ড", location: "Uttor Kattoli Ward 10, Chittagong"),
      Ward(id: 22, name: "১১নং দক্ষিণ কাট্টলি ওয়ার্ড", location: "Dokkhin Kattoli Ward 11, Chittagong"),
      Ward(id: 23, name: "১২নং সরাইপাড়া ওয়ার্ড", location: "Saraipara Ward 12, Chittagong"),
    ],
    ),
    Thana(
    id: 6,
    name: "পাঁচলাইশ থানা",
    location: "Panchlaish, Chittagong, Bangladesh",
    wards: [
      Ward(id: 24, name: "৭নং পশ্চিম ষোলশহর ওয়ার্ড", location: "Poschim Sholoshahar Ward 7, Chittagong"),
      Ward(id: 25, name: "৮নং শুলকবহর ওয়ার্ড", location: "Shulkobohor Ward 8, Chittagong"),
    ],
    ),
    Thana(
    id: 7,
    name: "বায়েজিদ বোস্তামী থানা",
    location: "Bayezid Bostami, Chittagong, Bangladesh",
    wards: [
      Ward(id: 26, name: "২নং জালালবাদ ওয়ার্ড", location: "Jalalabad Ward 2, Chittagong"),
      Ward(id: 27, name: "৩নং পাঁচলাইশ ওয়ার্ড", location: "Panchlaish Ward 3, Chittagong"),
      Ward(id: 28, name: "চট্টগ্রাম সেনা নিবাস", location: "Chittagong Cantonment, Chittagong"),
    ],
    ),
    Thana(
    id: 8,
    name: "পতেঙ্গা থানা",
    location: "Patenga, Chittagong, Bangladesh",
    wards: [
      Ward(id: 29, name: "৩৯নং দক্ষিণ হালিশহর ওয়ার্ড", location: "Dokkhin Halishahar Ward 39, Chittagong"),
      Ward(id: 30, name: "৪০নং উত্তর পতেঙ্গা ওয়ার্ড", location: "Uttor Patenga Ward 40, Chittagong"),
      Ward(id: 31, name: "৪১ দক্ষিণ পতেঙ্গা ওয়ার্ড", location: "Dokkhin Patenga Ward 41, Chittagong"),
    ],
    ),
    Thana(
    id: 9,
    name: "হালিশহর থানা",
    location: "Halishahar, Chittagong, Bangladesh",
    wards: [
      Ward(id: 32, name: "১১নং দক্ষিণ কাট্টলি ওয়ার্ড", location: "Dokkhin Kattoli Ward 11, Chittagong"),
      Ward(id: 33, name: "২৪নং উত্তর আগ্রাবাদ ওয়ার্ড", location: "Uttor Agrabad Ward 24, Chittagong"),
      Ward(id: 34, name: "২৫নং রামপুর ওয়ার্ড", location: "Rampur Ward 25, Chittagong"),
      Ward(id: 35, name: "২৬নং উত্তর হালিশহর ওয়ার্ড", location: "Uttor Halishahar Ward 26, Chittagong"),
    ],
    ),
    Thana(
    id: 10,
    name: "খুলশী থানা",
    location: "Khulshi, Chittagong, Bangladesh",
    wards: [
      Ward(id: 36, name: "৮নং শুলকবহর ওয়ার্ড", location: "Shulkobohor Ward 8, Chittagong"),
      Ward(id: 37, name: "১৩নং পাহাড়তলী ওয়ার্ড", location: "Pahartali Ward 13, Chittagong"),
      Ward(id: 38, name: "১৪নং লালখান বাজার ওয়ার্ড", location: "Lalkhan Bazar Ward 14, Chittagong"),
    ],),


    Thana(
      id: 11,
      name: "বাকলিয়া থানা",
      location: "Baklia, Chittagong, Bangladesh",
      wards: [
        Ward(id: 39, name: "১৭নং পশ্চিম বাকলিয়া ওয়ার্ড", location: "Poschim Baklia Ward 17, Chittagong"),
        Ward(id: 40, name: "১৮নং পূর্ব বাকলিয়া ওয়ার্ড", location: "Purbo Baklia Ward 18, Chittagong"),
        Ward(id: 41, name: "১৯নং দক্ষিণ বাকলিয়া ওয়ার্ড", location: "Dokkhin Baklia Ward 19, Chittagong"),
        Ward(id: 42, name: "৩৫নং বকশীরহাট ওয়ার্ড", location: "Bakshirhat Ward 35, Chittagong"),
      ],
    ),
    Thana(
    id: 12,
    name: "কর্ণফুলী থানা",
    location: "Karnaphuli, Chittagong, Bangladesh",
    wards: [
    Ward(id: 43, name: "কোলাগাঁও ইউনিয়ন", location: "Kolagaon Union, Patiya, Chittagong"),
    Ward(id: 44, name: "শিকলবাহা ইউনিয়ন", location: "Shikalbaha Union, Patiya, Chittagong"),
    Ward(id: 45, name: "চর পাথরঘাটা ইউনিয়ন", location: "Char Patharghata Union, Patiya, Chittagong"),
    Ward(id: 46, name: "চর লক্ষ্যা ইউনিয়ন", location: "Char Lakshya Union, Karnaphuli, Chittagong"),
    Ward(id: 47, name: "জুলধা ইউনিয়ন", location: "Juldha Union, Karnaphuli, Chittagong"),
    Ward(id: 48, name: "বড় উঠান ইউনিয়ন", location: "Boro Uthan Union, Karnaphuli, Chittagong"),
    Ward(id: 49, name: "বৈরাগ ইউনিয়ন", location: "Boirag Union, Anowara, Chittagong"),
    ],
    ),
    Thana(
    id: 13,
    name: "চকবাজার থানা",
    location: "Chawk Bazar, Chittagong, Bangladesh",
    wards: [
    Ward(id: 50, name: "৮নং শুলকবহর ওয়ার্ড", location: "Shulkobohor Ward 8, Chittagong"),
    Ward(id: 51, name: "১৫নং বাগমনিরাম ওয়ার্ড", location: "Bagmoniram Ward 15, Chittagong"),
    Ward(id: 52, name: "১৬নং চকবাজার ওয়ার্ড", location: "Chawk Bazar Ward 16, Chittagong"),
    ],
    ),
    Thana(
    id: 14,
    name: "আকবর শাহ থানা",
    location: "Akbar Shah, Chittagong, Bangladesh",
    wards: [
    Ward(id: 53, name: "৯নং উত্তর পাহাড়তলী ওয়ার্ড", location: "Uttor Pahartali Ward 9, Chittagong"),
    Ward(id: 54, name: "১০নং উত্তর কাট্টলী ওয়ার্ড", location: "Uttor Kattoli Ward 10, Chittagong"),
    Ward(id: 55, name: "সলিমপুর ইউনিয়ন", location: "Salimpur Union, Sitakunda, Chittagong"),
    ],
    ),
    Thana(
    id: 15,
    name: "সদরঘাট থানা",
    location: "Sadarghat, Chittagong, Bangladesh",
    wards: [
    Ward(id: 56, name: "২৯নং পশ্চিম মাদারবাড়ী ওয়ার্ড", location: "Poschim Madarbari Ward 29, Chittagong"),
    Ward(id: 57, name: "৩০নং পূর্ব মাদারবাড়ী ওয়ার্ড", location: "Purbo Madarbari Ward 30, Chittagong"),
    Ward(id: 58, name: "৩১নং আলকরণ ওয়ার্ড", location: "Alkaran Ward 31, Chittagong"),
    Ward(id: 59, name: "৩৩নং ফিরিঙ্গি বাজার ওয়ার্ড", location: "Firingi Bazar Ward 33, Chittagong"),
    Ward(id: 60, name: "৩৪নং পাথরঘাটা ওয়ার্ড", location: "Patharghata Ward 34, Chittagong"),
    ],
    ),
    Thana(
    id: 16,
    name: "ইপিজেড থানা",
    location: "EPZ, Chittagong, Bangladesh",
    wards: [
      Ward(id: 61, name: "৩৯নং দক্ষিণ হালিশহর ওয়ার্ড", location: "Dokkhin Halishahar Ward 39, Chittagong"),
      Ward(id: 62, name: "৪০নং উত্তর পতেঙ্গা ওয়ার্ড", location: "Uttor Patenga Ward 40, Chittagong"),
    ],
    ),
    ];

    update();
  }

  final List<Division> _division = [
    Division(id: 1, divisionName: "১ম খণ্ড"), // 1st Division
    Division(id: 2, divisionName: "২য় খণ্ড"), // 2nd Division
    Division(id: 3, divisionName: "৩য় খণ্ড"), // 3rd Division
    Division(id: 4, divisionName: "৪র্থ খণ্ড"), // 4th Division
    Division(id: 5, divisionName: "৫ম খণ্ড"), // 5th Division
  ];

  List<Division> get division => _division;
  List<Division> getDivision() {
    return _division;
  }
}
