import 'package:ekyc_repository/repo/ekyc_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pnvn_ekyc/generated_images.dart';
import 'package:pnvn_ekyc/l10n/generated/l10n.dart';
import 'package:pnvn_ekyc/model/info_data.dart';

class ViewInfoEkycController extends GetxController {
  var infoDatas = <InfoData>[].obs;
  final EkycRepo _ekycRepo = Get.find();
  var frontDocument = ''.obs;
  var backDocument = ''.obs;
  var isCMND = false.obs;
  var isLoading = true.obs;

  Future<void> getData({required BuildContext context}) async {
    var response = await _ekycRepo.getDataOcr();
    if ((response.data?.fullName ?? '') != '') {
      if ((response.data?.type ?? 0) == 0) {
        isCMND.value = true;
      } else if ((response.data?.type ?? 0) == 1) {
        isCMND.value = false;
      }
      infoDatas.add(InfoData(
          title: (isCMND.value
              ? S.of(context).cmndNumber
              : S.of(context).cccdNumber),
          content: response.data?.idNumber ?? '',
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).fullName,
          content: response.data?.fullName ?? '',
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).dob,
          content: response.data?.dayOfBirth ?? '',
          icon: Ic.icCalendar));
      if (!isCMND.value) {
        infoDatas.add(InfoData(
            title: S.of(context).gender,
            content: response.data?.gender ?? '',
            icon: Ic.icArrowDown));
      }
      infoDatas.add(InfoData(
          title: S.of(context).province,
          content: response.data?.domicile ?? '',
          icon: Ic.icArrowDown));
      infoDatas.add(InfoData(
          title: S.of(context).nationality,
          content: 'Việt Nam',
          icon: Ic.icArrowDown));
      infoDatas.add(InfoData(
          title: S.of(context).address,
          content: response.data?.permanentAddress ?? '',
          icon: ''));
      infoDatas.add(InfoData(
          title: S.of(context).dateOfIssue,
          content: response.data?.idIssuedDate ?? '',
          icon: Ic.icCalendar));
      infoDatas.add(InfoData(
          title: S.of(context).issueOf,
          content: response.data?.idissuedPlace ?? '',
          icon: ''));
      // infoDatas.add(InfoData(
      //     title: S.of(context).people,
      //     content: response.data?.ethnicity ?? '',
      //     icon: Ic.icArrowDown));
      // infoDatas.add(InfoData(
      //     title: S.of(context).religion,
      //     content: response.data?.religion ?? '',
      //     icon: Ic.icArrowDown));
      // infoDatas.add(InfoData(
      //     title: S.of(context).marry,
      //     content: response.data?.maritalStatus ?? '',
      //     icon: Ic.icArrowDown));
      // infoDatas.add(InfoData(
      //     title: S.of(context).email,
      //     content: response.data?.email ?? '',
      //     icon: ''));
      frontDocument.value = response.data?.frontImage ?? '';
      backDocument.value = response.data?.backImage ?? '';
      isLoading.value = false;
      backDocument.refresh();
      frontDocument.refresh();
      isCMND.refresh();
      infoDatas.refresh();
      isLoading.refresh();
    }
  }
}
