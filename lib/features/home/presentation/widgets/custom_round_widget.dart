import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vpn/core/common/styles/global_text_style.dart';

class CustomRoundWidget extends StatelessWidget {
  const CustomRoundWidget(
      {super.key,
      required this.titleText,
      required this.subTitleText,
      required this.roundWidgetIcon});
  final String titleText;
  final String subTitleText;
  final Widget roundWidgetIcon;
  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return SizedBox(
      width: sizeScreen.width * .45,
      child: Column(
        children: [
          roundWidgetIcon,
          SizedBox(
            height: 7.h,
          ),
          Text(titleText,style: getTextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(
            height: 7.h,
          ),
          Text(subTitleText,style: getTextStyle(
fontSize: 12,
              fontWeight: FontWeight.w600
          ),),
        ],
      ),
    );
  }
}
