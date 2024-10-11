import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_images.dart';
import '../../../../../../utils/enums.dart';
import '../../../../../config/routes/route_helper.dart';
import '../../../core/widgets/custom_toast.dart';
import 'custom_social_link_buttom.dart';

class SignInWithWidget extends StatelessWidget {
  const SignInWithWidget({super.key, required this.authScreenType});
  final AuthScreenType authScreenType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Or Signing Using".tr,
            style: TextStyle(
                fontSize: 16, color: AppColor.colorBlack70),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LinkButton(
              onTap: () {
                showCustomToast("Coming Soon");
              },
              iconAssets: AppImage.iconGoogle,
            ),
            LinkButton(
              onTap: () {
                showCustomToast("Coming Soon");
              },
              iconAssets: AppImage.iconFacebook,
            ),
            LinkButton(
              onTap: () {
                showCustomToast("Coming Soon");
              },
              iconAssets: AppImage.iconApple,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                authScreenType == AuthScreenType.forgotPassword
                    ? 'remember_password_key'.tr
                    : authScreenType == AuthScreenType.login
                        ? 'Dont have account '.tr
                        : 'have_an_account_key'.tr,
                style: TextStyle(
                    fontSize: 16, color: AppColor.colorBlack70)),
            GestureDetector(
              onTap: () {
                authScreenType == AuthScreenType.login
                    ? null //Get.toNamed(RouteHelper.signUpScreen)
                    : Get.back();
              },
              child: Text(
                  authScreenType == AuthScreenType.login
                      ? 'Sign Up'.tr
                      : 'sign_in_key'.tr,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.colorWarning100,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
