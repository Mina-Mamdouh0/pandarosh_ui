

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:panda_rosh/unit/responsive.dart';
import 'package:panda_rosh/screens/mobile/home_screen_mobile.dart';
import 'package:panda_rosh/screens/web/home_screen_web.dart';
import 'package:panda_rosh/widget/back_ground_image.dart';

import 'category_movies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileWidget:  HomeScreenMobile(),
        webWidget: HomeScreenWeb());
  }
}
