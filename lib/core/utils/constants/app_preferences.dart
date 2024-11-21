import 'dart:convert';

import 'package:hive_flutter/adapters.dart';
import 'package:vpn/features/home/model/vpn_info_model_class.dart';

class AppPreferences{

  static late Box boxOfData;

  static Future<void> initHive()async {
    await Hive.initFlutter();

    boxOfData=await Hive.openBox('data');

  }
  static bool get isModeDark=>boxOfData.get("isModeDark");

  static set isModeDark(bool value)=>boxOfData.put('isModeDark', value);


  // for saving single selected vpn details
  static VpnInfo get vpnInfoObj=> VpnInfo.fromJson(jsonDecode( boxOfData.get("vpn")??'{}'));

  static set vpnInfoObj(VpnInfo value)=> boxOfData.put("vpn", jsonEncode(value));

  //for saving all vpn server details

  static List<VpnInfo> get vpnList {
    List<VpnInfo> tempVpnList = [];
    final dataVpn = jsonDecode(boxOfData.get("vpnList") ?? '[]');
    for (var data in dataVpn) {
      tempVpnList.add(VpnInfo.fromJson(data));
    }
    return tempVpnList;
  }
  static set vpnList(List<VpnInfo> valueList) => boxOfData.put("vpnList", jsonEncode(valueList));
}