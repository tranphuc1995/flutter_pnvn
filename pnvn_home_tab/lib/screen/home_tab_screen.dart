import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pnvn_home_tab/controller/tab_screen_controller.dart';
import 'package:pnvn_home_tab/widgets/tab_widget.dart';

class HomeTabScreen extends GetView<TabScreenController> {
  final TabScreenController _tabScreenController = TabScreenController();

  HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var indexTab = Get.arguments as int;
    _tabScreenController.currentIndex.value = indexTab;
    _tabScreenController.initBottomTab(context: context);
    return Obx(
      () => SafeArea(
        top: false,
        bottom: true,
        child: Scaffold(
          bottomNavigationBar: _buildBottomTab(
              heightTab: _tabScreenController.heightTab, context: context),
          body: IndexedStack(
              index: _tabScreenController.currentIndex.value,
              children: _tabScreenController.views),
        ),
      ),
    );
  }

  Widget _buildBottomTab(
      {required double heightTab, required BuildContext context}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: heightTab,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              flex: 20,
              child: TabWidget(
                tabData: _tabScreenController.itemTabs[0],
                press: () {
                  _tabScreenController.clickTab(index: 0);
                },
              )),
          Expanded(
              flex: 20,
              child: TabWidget(
                tabData: _tabScreenController.itemTabs[1],
                press: () {
                  _tabScreenController.clickTab(index: 1);
                },
              )),
          Expanded(
              flex: 20,
              child: TabWidget(
                tabData: _tabScreenController.itemTabs[2],
                press: () {
                  _tabScreenController.clickTab(index: 2);
                },
              )),
          Expanded(
              flex: 20,
              child: TabWidget(
                tabData: _tabScreenController.itemTabs[3],
                press: () {
                  _tabScreenController.clickTab(index: 3);
                },
              )),
          Expanded(
              flex: 20,
              child: TabWidget(
                tabData: _tabScreenController.itemTabs[4],
                press: () {
                  _tabScreenController.clickTab(index: 4);
                },
              )),
        ],
      ),
    );
  }
}
