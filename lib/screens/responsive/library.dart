
import 'package:flutter/material.dart';
import 'package:panda_rosh/screens/mobile/library_mobile.dart';
import 'package:panda_rosh/screens/web/library_movies_web.dart';
import 'package:panda_rosh/unit/responsive.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileWidget:  LibraryMobile(),
        webWidget: LibraryMoviesWeb());
  }
}

