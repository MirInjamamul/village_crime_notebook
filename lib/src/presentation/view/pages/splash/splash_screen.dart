

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../controllers/user/user_controller.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../config/routes/route_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _checkLocalUserStorage();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.getPrimaryColor(),
        body: Center(
          child: Stack(
              alignment: Alignment.center,
              children: [
                // Image.asset(AppImage.splashVector),
                Image.asset(AppImage.appLogo),
              ]
          ),)
    );
  }

  void _checkLocalUserStorage() {

    if(Get.find<UserController>().getUserCount() == 0){
      /// user logged out / unavailable
      Future.delayed(const Duration(seconds: 2),(){
        Get.offNamed(RouteHelper.getSOnBoardingScreen());
      });
    }else{
      /// User Logged in
      // Get.offNamed(RouteHelper.getDashboardScreen());
    }


  }
}
