import 'package:get/get.dart';
import 'package:vpn/core/utils/constants/app_preferences.dart';
import 'package:vpn/features/home/model/vpn_info_model_class.dart';

class HomeController extends GetxController{
final Rx<VpnInfo> vpnInfo=AppPreferences.vpnInfoObj.obs;


}