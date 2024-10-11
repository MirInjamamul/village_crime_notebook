import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/app_colors.dart';

class LoginEmailField extends StatefulWidget {
  const LoginEmailField(
      {super.key,
      required this.userNameController,
      required this.isError,
      required this.userNameFocus,
      required this.passwordFocus,
      required this.onChanged});

  final TextEditingController userNameController;
  final FocusNode userNameFocus, passwordFocus;
  final bool isError;
  final void Function(String)? onChanged;

  @override
  State<LoginEmailField> createState() => _LoginEmailFieldState();
}

class _LoginEmailFieldState extends State<LoginEmailField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email'.tr,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.userNameController,
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp(r"\s\s")),
            FilteringTextInputFormatter.deny(RegExp(
                r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])')),
          ],
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          onChanged: widget.onChanged,
          maxLines: 1,
          focusNode: widget.userNameFocus,
          autofocus: false,
          onTap: () {
            setState(() {
              FocusScope.of(context).requestFocus(widget.userNameFocus);
            });
          },
          onFieldSubmitted: (v) {
            setState(() {
              FocusScope.of(context).requestFocus(widget.passwordFocus);
            });
          },
          decoration: _fieldDecoration(),
        ),
      ],
    );
  }

  InputDecoration _fieldDecoration() {
    return InputDecoration(
      prefixIcon: const Icon(Icons.email_outlined),
      hintText: 'Enter Email'.tr,
      errorText: widget.isError ? '' : null,
      contentPadding: const EdgeInsets.fromLTRB(16.0, 12.0, 12.0, 12.0),
      errorMaxLines: 1,
      counterText: "",
      filled: true,
      isDense: true,
      fillColor: Colors.white,
      focusedBorder: _outlineInputBorderFocusEnable(),
      disabledBorder: _outlineInputBorderDisabled(),
      enabledBorder: _outlineInputBorderFocusEnable(),
      border: _outlineInputBorder2(),
      errorBorder: _outlineInputBorderError(),
      focusedErrorBorder: _outlineInputBorderFocusError(),
      hintStyle: TextStyle(
          fontSize: 12, color: AppColor.colorBlack50),
    );
  }

  OutlineInputBorder _outlineInputBorderFocusError() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        width: 1,
        color: AppColor.colorError100,
      ),
    );
  }

  OutlineInputBorder _outlineInputBorderError() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(
          width: 1,
          color: AppColor.colorError100,
        ));
  }

  OutlineInputBorder _outlineInputBorder2() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        width: 1,
      ),
    );
  }

  OutlineInputBorder _outlineInputBorderDisabled() {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        width: 1,
        color: AppColor.getDisableColor(),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorderFocusEnable() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        width: 1,
        color: Colors.transparent,
      ),
    );
  }
}
