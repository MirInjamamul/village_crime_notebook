import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_images.dart';


class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isError;
  final String? hintText;
  final Function(String) onChanged;

  const CustomPasswordField(
      {super.key,
      required this.controller,
      required this.focusNode,
      this.isError = false,
      this.hintText,
      required this.onChanged});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.controller,
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp(r"\s\s")),
            FilteringTextInputFormatter.deny(RegExp(
                r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])')),
          ],
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          onChanged: widget.onChanged,
          maxLines: 1,
          focusNode: widget.focusNode,
          autofocus: false,
          obscureText: _obscureText,
          onTap: () {
            setState(() {
              FocusScope.of(context).requestFocus(widget.focusNode);
            });
          },
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.key_sharp),
            hintText: widget.hintText ?? 'enter_password_key'.tr,
            hintStyle: const TextStyle(
              color: AppColor.colorBlack30,
              fontSize: 14,
            ),
            errorText: widget.isError ? '' : null,
            contentPadding: const EdgeInsets.fromLTRB(16.0, 12.0, 12.0, 12.0),
            errorMaxLines: 1,
            counterText: "",
            filled: true,
            isDense: true,
            fillColor: Colors.white,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                width: 1,
                color: AppColor.getDisableColor(),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                width: 1,
              ),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                  width: 1,
                  color: AppColor.colorError100,
                )),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                width: 1,
                color: AppColor.colorError100,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: _toggle,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              _obscureText ? AppImage.eyeOff : AppImage.eye,
              width: 12,
              height: 12,
            ),
          ),
        )
      ],
    );
  }
}
