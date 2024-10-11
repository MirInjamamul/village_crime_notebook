import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../controllers/authentication/auth_controller.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/enums.dart';
import '../../../../../utils/helper/validation_helper.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/loader.dart';
import 'components/custom_password_field.dart';
import 'components/login_email_field.dart';
import 'components/sign_in_with_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _userNameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  bool _isError = false;
  String _responseErrorText = "";
  bool _rememberMe = true;

  @override
  void dispose() {
    _userNameController.dispose();
    _isError = false;
    _responseErrorText = "";
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the Screen height
    double screenHeight = MediaQuery.of(context).size.height;
    double topPadding = screenHeight / 6;

    return Scaffold(
      backgroundColor: AppColor.getBackgroundColor(),
      resizeToAvoidBottomInset: false,
      body: GetBuilder<AuthController>(builder: (auth) {
        return Stack(
          children: [
            ListView(
              padding:
              EdgeInsets.only(left: 22.0, right: 22.0, top: topPadding),
              children: [
                _buildHeaderWidget(),

                /// Username
                LoginEmailField(
                    userNameController: _userNameController,
                    isError: _isError,
                    userNameFocus: _userNameFocus,
                    passwordFocus: _passwordFocus,
                    onChanged: (text) {
                      setState(() {
                        text = _userNameController.text;
                        _isError = false;
                      });
                    }),

                /// Password
                _buildPasswordField(),

                _buildRememberMeRowWidget(),

                CustomButton(
                    onTap: () => onLogin(auth: auth),
                    buttonText: 'Login'.tr,
                    isColor: true,
                    borderRadius: 8),

                const SignInWithWidget(
                  authScreenType: AuthScreenType.login,
                ),
              ],
            ),
            if (false) ...[
              const Center(child: Loader()),
            ]
          ],
        );
      }),
    );
  }

  Widget _buildHeaderWidget() {
    return Column(
      children: [
        Container(
          child: Text("Village Crime Notebook (CMP)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
        ),
        SizedBox(height: Get.height * 0.02),
        Text(
          'Welcome'.tr,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        SizedBox(height: Get.height * 0.02),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          'Password'.tr,
          style: const TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        CustomPasswordField(
            controller: _passwordController,
            focusNode: _passwordFocus,
            isError: _isError,
            hintText: 'Enter Password'.tr,
            onChanged: (text) {
              setState(() {
                _isError = false;
              });
            }),
        const SizedBox(height: 16),
      ],
    );
  }

  void onLogin({required AuthController auth}) {
    if (ValidationHelper.isValidEmail(_userNameController.text)) {

      // Get.offAllNamed(RouteHelper.getDashboardScreen());
      _passwordController.clear();
    } else {
      setState(() {
        _isError = true;
        _responseErrorText = "Enter a Valid Email";
      });
    }
  }

  Widget _buildRememberMeRowWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    visualDensity: VisualDensity.compact,
                    value: _rememberMe,
                    onChanged: (v) {
                      setState(() {
                        _rememberMe = v!;
                      });
                    }),
                Text('Remember Me'.tr)
              ],
            ),
            GestureDetector(
              onTap: () {
                // Get.toNamed(RouteHelper.getForgetPasswordScreen());
              },
              child: Text(
                'Forget Password'.tr,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColor.colorError100,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColor.colorError100,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        if (_isError) ...[
          Text(_responseErrorText,
              style: const TextStyle(
                fontSize: 16,
                color: AppColor.colorError100,
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 20),
        ],
      ],
    );
  }
}
