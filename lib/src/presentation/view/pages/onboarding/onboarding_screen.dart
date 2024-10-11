import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../config/routes/route_helper.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImage.appLogo,
                fit: BoxFit.cover,
              )),
          Positioned(
              right: 0,
              top: height * .60,
              left: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.getBackgroundColor(),
                    borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Manage your Crime Notebook", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColor.colorBlack100),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Village Crime Book app simplifies crime reporting. Quickly document incidents and track cases, promoting safety and collaboration for a more secure community.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColor.colorBlack50),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                // Get.toNamed(RouteHelper.getSignUpScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.colorPrimary,
                                  foregroundColor:
                                  AppColor.getButtonTextColor(),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              child: const Text("Sign Up")),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                // Get.toNamed(RouteHelper.getLoginScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.colorYellow70,
                                  foregroundColor: AppColor.colorPrimary,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              child: const Text('Log In'))
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
