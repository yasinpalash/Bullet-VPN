import 'package:flutter/material.dart';

import 'app.dart';
import 'core/utils/constants/app_preferences.dart';

Future<void>  main()async {

  WidgetsFlutterBinding.ensureInitialized();
  AppPreferences.initHive();
  runApp(const MyApp());
}



