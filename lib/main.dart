
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:panda_rosh/screens/mobile/show_movies_mobile.dart';
import 'package:panda_rosh/screens/responsive/home_screen.dart';
import 'package:panda_rosh/screens/web/show_movies_web.dart';
import 'package:panda_rosh/unit/routes.dart';
import 'package:panda_rosh/unit/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'باندا روش',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeController().themeMode,
      getPages: RoutesPage.routes,
      initialRoute: RoutesPage.initScreen,
    );
  }
}

