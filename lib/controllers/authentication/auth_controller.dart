import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';

class AuthController extends GetxController implements GetxService {

  AuthController();

  ///access authcontroller without creating object from anywhere
  static AuthController get to => Get.find();
}
