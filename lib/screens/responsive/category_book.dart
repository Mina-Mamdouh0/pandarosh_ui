
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_rosh/unit/responsive.dart';
import 'package:panda_rosh/screens/mobile/category_book_mobile.dart';
import 'package:panda_rosh/screens/web/category_book_web.dart';


class CategoryBook extends StatelessWidget {
  const CategoryBook({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileWidget:  CategoryBookMobile(),
        webWidget: CategoryBookWeb());
  }
}
