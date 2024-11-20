import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vpn/core/common/styles/global_text_style.dart';
import 'package:vpn/core/utils/constants/colors.dart';
import 'package:vpn/features/home/presentation/widgets/custom_round_widget.dart';

import '../widgets/navBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bullet VPN"),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundWidget(
                titleText: 'Location',
                subTitleText: "FREE",
                roundWidgetIcon: CircleAvatar(
                  radius: 32.r,
                  backgroundColor: AppColors.secondary,
                  child: Icon(
                    Icons.flag_circle,
                    size: 30.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              CustomRoundWidget(
                titleText: '60 ms',
                subTitleText: "PING",
                roundWidgetIcon: CircleAvatar(
                  radius: 32.r,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.flag_circle,
                    size: 30.sp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          vpnRoundButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundWidget(
                titleText: '0 Kbps',
                subTitleText: "DOWNLOAD",
                roundWidgetIcon: CircleAvatar(
                  radius: 32.r,
                  backgroundColor: AppColors.success,
                  child: Icon(
                    Icons.arrow_circle_down,
                    size: 30.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              CustomRoundWidget(
                titleText: '0 Kbps',
                subTitleText: "UPLOAD",
                roundWidgetIcon: CircleAvatar(
                  radius: 32.r,
                  backgroundColor: AppColors.accent,
                  child: Icon(
                    Icons.arrow_circle_up_rounded,
                    size: 30.sp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget vpnRoundButton() {
    return Column(
      children: [
        Semantics(
          button: true,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(100.r),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
                child: Container(
                  height: 70.h,
                  width: 60.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: Column(
                    children: [
                      Icon(
                        Icons.power_settings_new,
                        size: 30.sp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text('Tap to Connect',
                          style: getTextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
