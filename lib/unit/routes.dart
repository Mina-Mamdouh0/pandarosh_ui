

import 'package:get/get.dart';
import 'package:panda_rosh/screens/responsive/category_book.dart';
import 'package:panda_rosh/screens/responsive/category_movies.dart';
import 'package:panda_rosh/screens/responsive/fav.dart';
import 'package:panda_rosh/screens/responsive/home_screen.dart';
import 'package:panda_rosh/screens/responsive/library.dart';
import 'package:panda_rosh/screens/responsive/show_book.dart';
import 'package:panda_rosh/screens/responsive/show_movies.dart';
import 'package:panda_rosh/screens/web/fav_book_web.dart';
import 'package:panda_rosh/screens/web/fav_movies_web.dart';
import 'package:panda_rosh/screens/web/library_book_web.dart';
import 'package:panda_rosh/screens/web/library_movies_web.dart';

class RoutesPage{
  static const String initScreen=Routes.homeScreen;

  static final routes=[
    GetPage(
        name: Routes.homeScreen,
        page:  ()=>const HomeScreen()),
    GetPage(
        name: Routes.categoryMovies,
        page:  ()=>const CategoryMovies()),
    GetPage(
        name: Routes.categoryBook,
        page:  ()=>const CategoryBook()),
    GetPage(
        name: Routes.showMovies,
        page:  ()=>const ShowMovies()),
    GetPage(
        name: Routes.showBook,
        page:  ()=>const ShowBook()),
    GetPage(
        name: Routes.fav,
        page:  ()=>const Fav()),
    GetPage(
        name: Routes.library,
        page:  ()=>const Library()),
    GetPage(
        name: Routes.libraryMoviesWeb,
        page:  ()=>const LibraryMoviesWeb()),
    GetPage(
        name: Routes.libraryBookWeb,
        page:  ()=>const LibraryBookWeb()),
    GetPage(
        name: Routes.favBookWeb,
        page:  ()=>const FavBookWeb()),
    GetPage(
        name: Routes.favMoviesWeb,
        page:  ()=>const FavMoviesWeb()),



  ];
}
class Routes{
   static const String  homeScreen='/homeScreen';
   static const String  categoryMovies='/categoryMovies';
   static const String  categoryBook='/categoryBook';
   static const String  showMovies='/showMovies';
   static const String  showBook='/showBook';
   static const String  library='/library';
   static const String  libraryMoviesWeb='/libraryMoviesWeb';
   static const String  libraryBookWeb='/libraryBookWeb';
   static const String  fav='/fav';
   static const String  favMoviesWeb='/favMoviesWeb';
   static const String  favBookWeb='/favBookWeb';


}