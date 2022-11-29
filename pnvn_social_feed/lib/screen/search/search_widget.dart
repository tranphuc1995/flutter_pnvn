import 'dart:async';
import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pnvn_social_feed/controller/search_keyword_controller.dart';
import 'package:pnvn_social_feed/generated_images.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  var currentSearchObs = ''.obs;
  var controller = TextEditingController();
  String from;
  SearchKeyowrdController searchKeyowrdController;
  ValueSetter<String> search;
  ValueSetter<String> onSearchSoftKeyboard;
  bool isInputSearch;
  String currentSearch;
  Timer? searchOnStoppedTyping;
  SearchWidget(
      {required this.search,
      required this.isInputSearch,
      required this.currentSearch,
      required this.searchKeyowrdController,
      required this.from,
      required this.onSearchSoftKeyboard});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(Ic.icArrowLeft)),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: isInputSearch
              ? Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: isInputSearch ? 6 : 12,
                      top: isInputSearch ? 6 : 12),
                  decoration: const BoxDecoration(
                      color: AppColor.borderColor,
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        Ic.icSearch,
                        width: 18,
                        height: 18,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(255),
                            ],
                            textInputAction: TextInputAction.search,
                            onFieldSubmitted: (value) {
                              if (isInputSearch) {
                                onSearchSoftKeyboard(value);
                              }
                            },
                            controller: controller,
                            onChanged: (text) {
                              if (text != currentSearchObs.value) {
                                searchKeyowrdController.showShimmer.value =
                                    true;
                                search(text);
                                currentSearchObs.value = text;
                                currentSearchObs.refresh();
                                if (searchOnStoppedTyping != null) {
                                  searchOnStoppedTyping?.cancel();
                                }
                                if (text.length >= 2 || text == '') {
                                  searchOnStoppedTyping = Timer(
                                      const Duration(milliseconds: 500), () {
                                    searchKeyowrdController.searchKeyword(
                                        keyword: text, from: from);
                                  });
                                } else {
                                  searchKeyowrdController.keywords.clear();
                                  //searchKeyowrdController.keywords.add('');
                                  searchKeyowrdController.keywords.refresh();
                                  searchKeyowrdController.showShimmer.value =
                                      false;
                                }
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: FontUtils.getAppFont(
                                fontSize: 14,
                                textColor: AppColor.colorTitleNews,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintText: 'Nhập từ khoá...',
                                hintStyle: FontUtils.getAppFont(
                                    fontSize: 14,
                                    textColor: AppColor.inactiveColor,
                                    fontWeight: FontWeight.w400))),
                      ),
                      Obx(() => SizedBox(
                            width: currentSearchObs.value == '' ? 0 : 10,
                          )),
                      Obx(() => currentSearchObs.value == ''
                          ? Container()
                          : InkWell(
                              onTap: () {
                                search('');
                                controller.clear();
                                currentSearchObs.value = '';
                                currentSearchObs.refresh();
                                searchKeyowrdController.showShimmer.value =
                                    true;
                                searchKeyowrdController.showShimmer.refresh();
                                searchKeyowrdController.searchKeyword(
                                    keyword: '', from: from);
                              },
                              child: SvgPicture.asset(
                                Ic.icClear,
                                width: 17,
                                height: 17,
                              ),
                            ))
                    ],
                  ),
                )
              : InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: isInputSearch ? 6 : 12,
                        top: isInputSearch ? 6 : 12),
                    decoration: const BoxDecoration(
                        color: AppColor.borderColor,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          Ic.icSearch,
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            currentSearch,
                            style: FontUtils.getAppFont(
                                fontSize: 14,
                                textColor: AppColor.colorTitleNews,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Obx(() => SizedBox(
                              width: currentSearchObs.value == '' ? 0 : 10,
                            )),
                        Obx(() => currentSearchObs.value == ''
                            ? Container()
                            : InkWell(
                                onTap: () {
                                  search('');
                                  controller.clear();
                                  currentSearchObs.value = '';
                                  currentSearchObs.refresh();
                                  searchKeyowrdController.searchKeyword(
                                      keyword: '', from: from);
                                },
                                child: SvgPicture.asset(
                                  Ic.icClear,
                                  width: 17,
                                  height: 17,
                                ),
                              ))
                      ],
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
