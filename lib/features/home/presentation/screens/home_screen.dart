import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
}
