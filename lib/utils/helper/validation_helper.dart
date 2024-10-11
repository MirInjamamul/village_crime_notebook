
class ValidationHelper{
  static bool isValidPhoneNumber(String number){
    final RegExp regex = RegExp(r'^(?:\+8801|01)[0-9]{9}$');
    return regex.hasMatch(number);
  }

  static bool isValidEmail(String email){
    final RegExp regex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return regex.hasMatch(email);
  }
}