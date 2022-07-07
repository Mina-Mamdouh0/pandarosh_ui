
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda_rosh/unit/responsive.dart';
import 'package:panda_rosh/screens/mobile/category_movies_mobile.dart';
import 'package:panda_rosh/screens/web/category_movies_web.dart';

class CategoryMovies extends StatelessWidget {
  const CategoryMovies({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayout(
        mobileWidget:  CategoryMoviesMobile(),
        webWidget: CategoryMoviesWeb());
  }
}
