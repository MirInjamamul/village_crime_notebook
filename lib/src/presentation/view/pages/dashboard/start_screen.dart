import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:village_crime/src/presentation/view/pages/dashboard/settings_screen.dart';

import '../../../../../controllers/home/home_conreoller.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../bottom_navigation/bottom_nav_item.dart';
import 'donate_screen.dart';
import 'home_screen.dart';
import 'learn_screen.dart';

class DashboardScreen extends StatefulWidget {
  final int pageIndex;
  const DashboardScreen({super.key, this.pageIndex = 0});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    Get.find<HomeController>().initPageIndex(widget.pageIndex);
    super.initState();
  }

  @override
  void dispose() {
    // Get.find<HomeController>().disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (home) {
      return Scaffold(
        backgroundColor: AppColor.getBackgroundColor(),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: AppColor.colorWhite,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavItem(
                  image: home.pageIndex == 0
                      ? AppImage.homeActive
                      : AppImage.homeInActive,
                  title: "Home".tr,
                  isSelected: home.pageIndex == 0,
                  onTap: () {
                    home.setPageIndex(0);
                  },
                ),
                BottomNavItem(
                  image: home.pageIndex == 1
                      ? AppImage.learnActive
                      : AppImage.learnInActive,
                  title: "Menu".tr,
                  isSelected: home.pageIndex == 1,
                  onTap: () {
                    home.setPageIndex(1);
                  },
                ),
                BottomNavItem(
                  image: home.pageIndex == 2
                      ? AppImage.donateActive
                      : AppImage.donateInActive,
                  title: "Service".tr,
                  isSelected: home.pageIndex == 2,
                  onTap: () {
                    home.setPageIndex(2);
                  },
                ),
                BottomNavItem(
                  image: home.pageIndex == 3
                      ? AppImage.manageActive
                      : AppImage.manageInActive,
                  title: "Settings".tr,
                  isSelected: home.pageIndex == 3,
                  onTap: () {
                    home.setPageIndex(3);
                  },
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          top: false,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PageView(
              controller: home.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                HomeScreen(),
                LearnScreen(),
                DonateScreen(),
                SettingsScreen()
              ],
            ),
          ),
        ),
      );
    });
  }
}

class ManageMyNgoScreen {
  const ManageMyNgoScreen();
}
