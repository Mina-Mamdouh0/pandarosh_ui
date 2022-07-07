
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:panda_rosh/unit/routes.dart';
import 'package:panda_rosh/unit/theme.dart';

class CardScreen extends StatelessWidget {
   bool isMovies=true;
   bool isBook=false;
   bool isFav=false;
   bool isLib=false;
   CardScreen({Key? key,this.isMovies:false,
     this.isBook:false,this.isFav:false,this.isLib:false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(10),
      color: Get.isDarkMode?const Color(0XFF2B2D2F): const Color(0XFFF8F8F8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [

          Image.asset('assets/images/logo.png',
            width: 60,height: 60,fit: BoxFit.fill,),
          const  SizedBox(height: 30,),
          InkWell(
            onTap: ()=>Get.offNamed(Routes.categoryMovies),
            child: HoverWidget(
              onHover: (event){},
              hoverChild: Column(
                children: const [
                  Icon(FontAwesomeIcons.clapperboard,
                    color: Colors.deepOrange,size: 50,),
                  Text('المسلسلات و الافلام',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange,
                        fontSize: 18),),
                ],
              ),
              child: Column(
                children:  [
                  Icon(FontAwesomeIcons.clapperboard,
                    color: isMovies?Colors.deepOrange:Color(0xFFA1A5AC),size: 50,),
                  Text('المسلسلات و الافلام',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: isMovies?Colors.deepOrange:Color(0xFFA1A5AC),
                        fontSize: 18),),
                ],
              ),
            ),
          ),
          const  SizedBox(height: 25,),
          InkWell(
            onTap: ()=>Get.offNamed(Routes.categoryBook),
            child: HoverWidget(
              onHover: (event){},
              hoverChild: Column(
                children: const [
                  Icon(FontAwesomeIcons.bookMedical,
                    color: Colors.deepOrange,size: 50,),
                  Text('الكتب',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.deepOrange,
                        fontSize: 18),),
                ],
              ),
              child: Column(
                children:  [
                  Icon(FontAwesomeIcons.bookMedical,
                    color: isBook?Colors.deepOrange:Color(0xFFA1A5AC),size: 50,),
                  Text('الكتب',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(color:isBook?Colors.deepOrange:Color(0xFFA1A5AC),
                        fontSize: 18),),
                ],
              ),
            ),
          ),
          const  SizedBox(height: 25,),
          PopupMenuButton(
              child:  HoverWidget(
                onHover: (event){},
                hoverChild:  Column(
                  children: const [
                    Icon(Icons.library_music,
                      color: Colors.deepOrange,size: 50,),
                    Text('مكتبتي',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.deepOrange,
                          fontSize: 18),),
                  ],
                ),
                child:  Column(
                  children:  [
                    Icon(Icons.library_music,
                      color: isLib?Colors.deepOrange:Color(0xFFA1A5AC),size: 50,),
                    Text('مكتبتي',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.start,
                      style: TextStyle(color: isLib?Colors.deepOrange:Color(0xFFA1A5AC),
                          fontSize: 18),),
                  ],
                ),
              ),
              itemBuilder:   (context) => <PopupMenuEntry<Text>>[
                PopupMenuItem<Text>(
                    child:  TextButton(onPressed: ()=>Get.offNamed(Routes.libraryMoviesWeb),
                      child:Text('المسلسلات والافلام',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                      ),)
                ),
                PopupMenuItem<Text>(
                    child: TextButton(onPressed: ()=>Get.offNamed(Routes.libraryBookWeb),
                        child:const Text('الكتب'))
                )
              ]),
          const  SizedBox(height: 25,),
          PopupMenuButton(
              child: HoverWidget(
                onHover: (event){},
                hoverChild:  Column(
                  children: const [
                    Icon(FontAwesomeIcons.heartCircleBolt,
                      color: Colors.deepOrange,size: 50,),
                    Text('المفضله',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.deepOrange,
                          fontSize: 18),),
                  ],
                ),
                child:  Column(
                  children:  [
                    Icon(FontAwesomeIcons.heartCircleBolt,
                      color: isFav?Colors.deepOrange:Color(0xFFA1A5AC),size: 50,),
                    Text('المفضله',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.start,
                      style: TextStyle(color: isFav?Colors.deepOrange:Color(0xFFA1A5AC),
                          fontSize: 18),),
                  ],
                ),
              ),
              itemBuilder:   (context) => <PopupMenuEntry<Text>>[
                PopupMenuItem<Text>(
                    child:  TextButton(onPressed: ()=>Get.offNamed(Routes.favMoviesWeb),
                      child:Text('المسلسلات والافلام',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                      ),)
                ),
                PopupMenuItem<Text>(
                    child: TextButton(onPressed: ()=>Get.offNamed(Routes.favBookWeb),
                        child:const Text('الكتب'))
                )
              ]),


          const Spacer(),
          PopupMenuButton(
              child:  HoverWidget(
                onHover: (event){},
                hoverChild:  Row(
                  children:const [
                    Icon(Icons.settings,
                      color: Colors.deepOrange,size: 20,),
                    Expanded(
                      child: Text('الاعدادات',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.deepOrange,),),
                    ),
                  ],
                ),
                child:  Row(
                  children:const [
                    Icon(Icons.settings,
                      color: Color(0xFFA1A5AC),size: 20,),
                    Expanded(
                      child: Text('الاعدادات',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Color(0xFFA1A5AC),),),
                    ),
                  ],
                ),
              ),

              itemBuilder:   (context) => <PopupMenuEntry<Text>>[
                PopupMenuItem<Text>(
                    child:  TextButton(onPressed: (){
                      ThemeController().changeTheTheme();
                      Get.back();
                    },
                      child:Row(
                        children: [
                          Icon(Get.isDarkMode?FontAwesomeIcons.lightbulb:FontAwesomeIcons.moon,
                            size: 20,),
                          const SizedBox(width: 10,),
                          Text(Get.isDarkMode?'تفعيل الوضع الفاتح':'تفعيل الوضع الغامق',
                            maxLines: 1,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),)
                ),
                PopupMenuItem<Text>(
                    child: TextButton(onPressed: (){}, child:const Text('توصل معنا'))
                ),
                PopupMenuItem<Text>(
                    child: TextButton(onPressed: (){}, child:const Text('تسجيل الخروج'))
                )
              ]),





        ],
      ),
    );
  }
}
