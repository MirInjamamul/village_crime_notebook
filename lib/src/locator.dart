
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:village_crime/controllers/authentication/auth_controller.dart';
import 'package:village_crime/controllers/home/home_conreoller.dart';

import '../controllers/splash/splash_controller.dart';
import '../controllers/user/user_controller.dart';

Future<void> init() async {
  /// Core
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);


  /// Controller
  Get.lazyPut(() => SplashController());
  Get.lazyPut(() => UserController());
  Get.lazyPut(() => AuthController());
  Get.lazyPut(() => HomeController());
}