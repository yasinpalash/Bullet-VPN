import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/utils/constants/colors.dart';

locationSelectionBottomNavigation(BuildContext context) {
  return SafeArea(
    child: Semantics(
      button: true,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          color: AppColors.bottomNavigationBar,
          height: 62.h,
          child: Row(
            children: [
              Icon(
                CupertinoIcons.flag_circle,
                size: 36.sp,
                color: Colors.white,
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                'Select Country / Location',
                style: getTextStyle(
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.bottomNavigationBar,
                  size: 26.sp,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
