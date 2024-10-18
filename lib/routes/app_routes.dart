import 'package:get/get.dart';
import 'package:vpn/features/home/presentation/screens/home_screen.dart';

class AppRoute {
  static String homeScreen = "/loginScreen";


  static String getHomeScreen() => homeScreen;

  static List<GetPage> routes = [
    GetPage(name: homeScreen, page: () => const HomeScreen()),

  ];
}