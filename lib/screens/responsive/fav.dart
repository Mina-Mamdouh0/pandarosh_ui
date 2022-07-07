
import 'package:flutter/material.dart';
import 'package:panda_rosh/screens/mobile/fav_mobile.dart';
import 'package:panda_rosh/screens/web/fav_book_web.dart';
import 'package:panda_rosh/unit/responsive.dart';

class Fav extends StatelessWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileWidget:  FavMobile(),
        webWidget: FavBookWeb());
  }
}
