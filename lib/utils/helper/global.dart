import 'package:logger/logger.dart';

import '../../model/entities/form_result/section_model/question_model/option_model/option_model.dart';
import '../../model/entities/form_result/section_model/question_model/question_model.dart';

final globalLogger = Logger();

loggerDebug(String? message, dynamic data) {
  return globalLogger.log(Level.debug, message, error: data);
}

loggerError(String? message, dynamic data) {
  return globalLogger.log(Level.error, message, error: data);
}

String isMandatory(QuestionModel questionModel) {
  if (questionModel.isMandatory ?? false) {
    return " *";
  } else {
    return "";
  }
}

String getAllOptions(List<OptionModel> optionModel) {
  String value = "";
  for (int i = 0; i < optionModel.length; i++) {
    value += optionModel[i].name ?? "";
    if (i != optionModel.length - 1) {
      value += ", ";
    }
  }
  return value;
}

String capitalizeFirstLetter(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}

int calculateDaysLeft(DateTime targetDate) {
  final currentDate = DateTime.now();
  return targetDate.difference(currentDate).inDays;
}

// String getFormattedDateTime(DateTime dateTime, String pattern) =>
//     DateFormat(pattern).format(dateTime);

// bool isEmail(String? email) {
//   if (email == null) {
//     return false;
//   }
//
//   String p =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//   RegExp regExp = RegExp(p);
//   return regExp.hasMatch(email);
// }

// bool isPhoneNumber(String? phoneNumber) {
//   if (phoneNumber == null) {
//     return false;
//   }
//   // Regular expression for international phone numbers.
//   final RegExp phoneNumberRegex = RegExp(r'^(\+|00)?[0-9]+$');
//
//   if (!phoneNumberRegex.hasMatch(phoneNumber)) {
//     return false;
//   }
//
//   if (phoneNumber.length < 10) {
//     return false;
//   }
//
//   return true;
// }
