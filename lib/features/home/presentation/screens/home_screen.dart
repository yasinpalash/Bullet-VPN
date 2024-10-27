import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vpn/app.dart';
import 'package:vpn/core/common/styles/global_text_style.dart';
import 'package:vpn/core/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              SizedBox(width:12.w
                ,),
              Text('Select Country / Location',style: getTextStyle(
                fontSize: 18,
              ),),
              Spacer(),

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
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("One VPN"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.perm_device_info),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.brightness_2_outlined))
        ],
      ), 
     bottomNavigationBar: locationSelectionBottomNavigation(context),
    );
  }
}
