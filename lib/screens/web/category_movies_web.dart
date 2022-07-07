
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:panda_rosh/unit/routes.dart';
import 'package:panda_rosh/widget/audio_sound.dart';
import 'package:panda_rosh/widget/card_screens.dart';
import 'package:url_launcher/url_launcher.dart';


class CategoryMoviesWeb extends StatefulWidget {
   CategoryMoviesWeb({Key? key}) : super(key: key);


  @override
  State<CategoryMoviesWeb> createState() => _CategoryMoviesWebState();
}

class _CategoryMoviesWebState extends State<CategoryMoviesWeb> {
  IconData icons=Icons.play_circle_fill;
  bool showOffers=true;
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(height: 50,
                          padding: const EdgeInsets.symmetric( horizontal: 20, ),
                          width: double.infinity,
                          color: context.theme.backgroundColor,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Text('باندا روش',style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: size.width*0.020,
                                fontFamily: 'aribic',
                                fontWeight: FontWeight.bold,
                                //fontStyle: FontStyle.italic,
                            ),),
                            const VerticalDivider(
                              color: Colors.black,
                              indent: 1,
                              endIndent: 1,
                              thickness: 0.5,
                            ),
                             CircleAvatar(
                              radius: size.width*0.015,
                              backgroundColor: Colors.black,
                              backgroundImage:  NetworkImage('https://media.istockphoto.com/photos/businesswoman-using-computer-in-dark-office-picture-id557608443?k=6&m=557608443&s=612x612&w=0&h=fWWESl6nk7T6ufo4sRjRBSeSiaiVYAzVrY-CLlfMptM=',),
                            ),
                             SizedBox(width: size.width*0.010,),
                             Text('Ahmed Mostafa',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.blueAccent,
                                  fontSize: size.width*0.015,),),
                            const Spacer(),
                            Container(
                              width: size.width*0.40,
                              height: 40,
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.shade300
                              ),
                              child:  TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search),
                                  suffixIconColor: Colors.deepOrange,
                                  hintText: 'ابحث عن المزيد من المسلسلات والافلام',
                                  hintStyle: TextStyle(
                                      fontSize: size.width>=900?size.width*0.012:size.width*0.015,
                                      color: Colors.black
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade300
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300
                                      )
                                  ),
                                 ),

                                ),

                              /*Row(
                                children:  [
                                  Text('ابحث عن المزيد من المسلسلات والافلام ',
                                    style: TextStyle(
                                      fontSize: size.width*0.01,
                                        color: Colors.black
                                    ),),
                                  const Spacer(),
                                  const Icon(Icons.search)
                                ],
                              ),*/
                            ),
                            const SizedBox(width: 15,),
                            (size.width>660)?MaterialButton(onPressed: (){
                              Get.defaultDialog(
                                title: 'حول كتابك',
                                barrierDismissible: false,
                                buttonColor:
                                Colors.deepOrange,
                                content: Column(
                                  children: [
                                    Text(
                                        ':اذا اعجبك هذا الكتاب يمكنك الأن التواصل معنا لتحويل كتابك'),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .center,
                                      children: [
                                        InkWell(
                                            onTap: () async {
                                              await launchUrl(
                                                  Uri.parse(
                                                      'https://wa.me/message/XJFNP7N7WYRBJ1'));
                                            },
                                            child: Icon(
                                              FontAwesomeIcons
                                                  .whatsapp,
                                              size: 40,
                                              color: Colors
                                                  .green,
                                            )),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                            onTap: () async {
                                              await launchUrl(
                                                  Uri.parse(
                                                      'https://www.facebook.com/KITABAKMASMO3'));
                                            },
                                            child: Icon(
                                              FontAwesomeIcons
                                                  .facebook,
                                              size: 40,
                                              color:
                                              Colors.blue,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                                cancelTextColor: Colors.black,
                                textCancel: 'العوده',
                              );
                            },
                              color: Colors.deepOrange,
                              child:  Text('حول كتابك',
                                style: TextStyle(
                                    fontFamily: 'aribic',
                                    fontSize: size.width*0.015,color: Colors.white
                                ),),
                              /*padding: const EdgeInsets.only(
                                right: 12,
                              left: 12,
                              bottom: 20,
                              ),*/
                            ):Container(),
                          ],
                        ),),
                        Expanded(
                          child: isLoading?Center(
                            child: Container(
                              decoration: BoxDecoration(
                                //color: Colors.deepOrange,
                                border: Border.all(color: Colors.deepOrange,
                                width: 3),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('يجب عليك تسجيل الدخول لرؤيه مكتبتك او المفضله',
                                  style: TextStyle(
                                    color: Get.isDarkMode?Colors.white:Colors.black,
                                     fontSize: 18,

                                  ),),
                                  const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(FontAwesomeIcons.facebook,
                                      color: Colors.blueAccent,size: 40,),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                        "assets/images/google.png",
                                        fit: BoxFit.fill,
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    ]),
                                ],
                              ),
                            ),
                          )
                              :Stack(
                            children: [
                              GridView.builder(
                                  padding: const EdgeInsets.all(20),
                                  shrinkWrap: false,
                                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 400,
                                      mainAxisSpacing: 8,
                                      mainAxisExtent: 180,
                                      crossAxisSpacing: 8,
                                      childAspectRatio: 3/2),
                                  itemCount: 25,
                                  itemBuilder: (context,index){
                                    return InkWell(
                                      onTap: ()=>Get.toNamed(Routes.showMovies),
                                      child: HoverCrossFadeWidget(
                                        duration: const Duration(milliseconds: 500),
                                        firstChild: Container(
                                          decoration:  const BoxDecoration(
                                              image:  DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage('assets/images/image.webp',)
                                              )
                                          ),

                                        ),
                                        secondChild: Container(
                                          width: 400,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.deepOrange,
                                                  width: 0.5
                                              )
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset('assets/images/image.webp',
                                                    fit: BoxFit.cover,width: 400,
                                                    height: 150,
                                                  ),
                                                  const Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child:  Banner(
                                                      color: Colors.red,
                                                      message: 'الجديد',
                                                      location: BannerLocation.topEnd,
                                                    ),
                                                  ),
                                                  Positioned(
                                                      top: 10,
                                                      right: 10,
                                                      child:Container(
                                                        color: Colors.black38,
                                                        child: const Text('10:54',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                        ),
                                                          textAlign: TextAlign.start,),
                                                      ) )
                                                ],
                                              ),
                                              Padding(
                                                padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                                                child:  SingleChildScrollView(
                                                  scrollDirection: Axis.horizontal,
                                                  child: Text(' الحقيقه والسراب الحقيقه والسراب الحقيقه والسراب الحقيقه والسراب الحقيقه والسراب',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Get.isDarkMode?Colors.white:const Color(0XFF215480),
                                                    fontSize: 20,
                                                  ),
                                                    textAlign: TextAlign.start,),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                              showOffers?Positioned(
                                bottom: 0,
                                  right: 10,
                                  child: Stack(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        height: 150,
                                        width: 250,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('احداث العروض',
                                              style:TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.deepOrange,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                            const SizedBox(height: 10,),
                                            Text('اشتري كتاب ومعه كتاب هديه',
                                              style:TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.deepOrange,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                          onPressed: (){
                                            setState(() {
                                              showOffers=false;
                                            });
                                          },
                                          icon: Icon(Icons.close,
                                          color: Colors.deepOrange,size: 20,),
                                        ),
                                      )
                                    ],
                                  )
                              ):Container()
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                   CardScreen(isBook: false,isFav: false, isLib: false,isMovies: true,),
                ],
              ),
            ),
             Card(
              color: context.theme.backgroundColor,
              child: SizedBox(
                height: 70,
              width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children:  [
                      (size.width>710)?Image.asset('assets/images/image.webp',
                      height: size.width*0.050,width: size.width*0.050,):Container(),
                      const SizedBox(width: 15,),
                      (size.width>710)?Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text('الجقيقه والسراب',style: TextStyle(
                            color: Get.isDarkMode?Colors.white:Colors.black,
                            fontSize: size.width*0.015,fontWeight: FontWeight.bold
                          ),),
                          Text('احمد اسماعيل',style: TextStyle(
                              color: Get.isDarkMode?Colors.white:Colors.blueAccent,
                              fontSize: size.width*0.012,fontWeight: FontWeight.normal
                          ),)
                        ],
                      ):Container(),
                      const Spacer(),
                      (size.width>710)?const Icon(FontAwesomeIcons.heartCircleBolt,color: Colors.red,):Container(),
                       SizedBox( width: size.width*0.012,),
                      const Icon(FontAwesomeIcons.share,color: Colors.deepOrange,),
                      VerticalDivider(color: Colors.grey.shade300,
                      thickness: 2,
                      indent: 10,endIndent: 10,),

                       const AudioThePlayer(),
                      VerticalDivider(color: Colors.grey.shade300,
                        thickness: 2,
                        indent: 10,endIndent: 10,),
                      const Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                        child:  Icon(FontAwesomeIcons.volumeHigh,color: Colors.deepOrange,),
                      ),
                      VerticalDivider(color: Colors.grey.shade300,
                        thickness: 2,
                        indent: 10,endIndent: 10,),



                      PopupMenuButton(
                          child:  Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12,
                            vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.deepOrange,
                            ),
                            child: Padding(
                              padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                              child:   Row(
                                children: [
                                  Text('المزيد ',
                                    style: TextStyle(
                                        fontFamily: 'aribic',
                                        fontSize: size.width*0.012,color: Colors.white
                                    ),),
                                  const  SizedBox(width: 5,),
                                  const Icon(Icons.keyboard_arrow_up,
                                    color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          itemBuilder:   (context) =>
                          <PopupMenuEntry<Text>>[
                           ...[1,2,3].map((e) => PopupMenuItem<Text>(
                               child:  ListTile(
                                 style: ListTileStyle.list,
                                 leading:  CircleAvatar(
                                   radius: size.width*0.013,
                                   backgroundImage: AssetImage('assets/images/image.webp',),
                                 ),
                                 title: Text('الحقيقه والسراب',
                                   style: TextStyle(color: Get.isDarkMode?Colors.grey:Colors.black,
                                       fontSize: size.width*0.01),) ,
                                 subtitle:  Text('الحقيقه والسراب',

                                   style: TextStyle(color: Colors.blueAccent,
                                       fontSize: size.width*0.009,),) ,
                                 trailing: IconButton(
                                   color: Colors.deepOrange,
                                   onPressed: (){},
                                   icon: Icon(Icons.pause),
                                 ),
                                                              )
                           ),).toList()
                          ]
                      ),



                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
