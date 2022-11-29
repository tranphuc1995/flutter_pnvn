import 'package:core/color/app_color.dart';
import 'package:core/fonts/font_utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../generated_images.dart';

class TextValidatePassword extends StatelessWidget {
  String text;
  bool isValidate = false;

  TextValidatePassword({Key? key, required this.text, this.isValidate = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(this.isValidate ? Ic.icCheck : Ic.icCross),
            const SizedBox(
              width: 8,
            ),
            Text(text,
                style: FontUtils.getAppFont(
                    fontSize: 12,
                    textColor: this.isValidate ? AppColor.green : AppColor.red,
                    fontWeight: FontWeight.w400))
          ],
        ),
      ],
    );
  }
}
