import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:core/generated_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class LoginFieldWidget extends StatelessWidget {
  String icon;
  String hintTextField;
  TextInputType keyboardType;
  String contentError;
  bool isShowIconEye;
  var isShowPass = false.obs;
  ValueSetter<String> onTextChange;
  int maxInput;
  LoginFieldWidget(
      {Key? key,
      required this.icon,
      required this.hintTextField,
      required this.keyboardType,
      required this.isShowIconEye,
      required this.contentError,
      this.maxInput = -1,
      required this.onTextChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //padding: const EdgeInsets.all(16),
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 6, top: 6),
          decoration: BoxDecoration(
              border: Border.all(
                  color: contentError != ''
                      ? AppColor.error
                      : AppColor.colorLineSpace),
              borderRadius: const BorderRadius.all(Radius.circular(24))),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(icon),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Obx(() => TextFormField(
                            onChanged: (text) {
                              onTextChange(text);
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(maxInput),
                            ],
                            obscureText: isShowIconEye
                                ? !isShowPass.value
                                : isShowPass.value,
                            keyboardType: keyboardType,
                            style: FontUtils.getAppFont(
                                fontSize: 16,
                                textColor: AppColor.colorTitleNews,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: hintTextField,
                                hintStyle: FontUtils.getAppFont(
                                    fontSize: 16,
                                    textColor: AppColor.inactiveColor,
                                    fontWeight: FontWeight.w400)))))
                  ],
                ),
              ),
              isShowIconEye
                  ? InkWell(
                      onTap: () {
                        if (isShowPass.value) {
                          isShowPass.value = false;
                        } else {
                          isShowPass.value = true;
                        }
                        isShowPass.refresh();
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Row(children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() => SvgPicture.asset(
                            isShowPass.value ? Ic.icEyeShowPass : Ic.icEye))
                      ]),
                    )
                  : Container()
            ],
          ),
        ),
        contentError == ''
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(left: 18, top: 6),
                child: Text(contentError,
                    style: FontUtils.getAppFont(
                        fontSize: 12,
                        textColor: AppColor.error,
                        fontWeight: FontWeight.w400)),
              ),
      ],
    );
  }
}
