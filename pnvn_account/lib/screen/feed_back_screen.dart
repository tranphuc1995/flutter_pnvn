import 'dart:async';

import 'package:core/color/app_color.dart';
import 'package:core/core.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter/material.dart';
import 'package:pnvn_account/controller/feed_back_controller.dart';
import 'package:pnvn_account/l10n/generated/l10n.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class FeedBackScreen extends StatelessWidget {
  final FeedBackController _feedBackController = FeedBackController();
  late StreamSubscription<bool> keyboardSubscription;
  var isFocus = false.obs;
  var isActiveButton = false.obs;
  var content = '';
  @override
  Widget build(BuildContext context) {
    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      if (visible) {
        isFocus.value = true;
        isFocus.refresh();
      } else {
        isFocus.value = false;
        isFocus.refresh();
      }
    });
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBarWidget(
          title: S.of(context).feed_back,
          isShowIconBack: true,
          isCenterTitle: false,
          isRadiusBottom: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(S.of(context).content,
                      textAlign: TextAlign.center,
                      style: FontUtils.getAppFont(
                          fontSize: 16,
                          textColor: AppColor.colorCategoryNews,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 24,
                  ),
                  Obx(() => Container(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 4, bottom: 4),
                        height: 140,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isFocus.value
                                    ? AppColor.primary
                                    : AppColor.colorLineSpace),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(500),
                            ],
                            onChanged: (value) {
                              content = value;
                              if (value.trim() != '') {
                                isActiveButton.value = true;
                              } else {
                                isActiveButton.value = false;
                              }
                              isActiveButton.refresh();
                            },
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            style: FontUtils.getAppFont(
                                fontSize: 16,
                                textColor: AppColor.colorTitleNews,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: S.of(context).hint_feed_back,
                                hintStyle: FontUtils.getAppFont(
                                    fontSize: 16,
                                    textColor: AppColor.inactiveColor,
                                    fontWeight: FontWeight.w400))),
                      ))
                ],
              ),
              Obx(() => ButtonWidget(
                    text: S.of(context).send,
                    isActive: isActiveButton.value,
                    isLoading: _feedBackController.isLoadingButton.value,
                    press: () {
                      _feedBackController.submitFeedBack(content: content);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
