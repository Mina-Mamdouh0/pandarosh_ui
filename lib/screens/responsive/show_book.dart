
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_rosh/screens/mobile/show_book_mobile.dart';
import 'package:panda_rosh/unit/responsive.dart';
import 'package:panda_rosh/screens/web/show_book_web.dart';

class ShowBook extends StatelessWidget {
  const ShowBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileWidget:  ShowBookMobile(),
        webWidget: ShowBookWeb());
  }
}
