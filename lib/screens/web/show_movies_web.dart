
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:panda_rosh/unit/routes.dart';
import 'package:panda_rosh/widget/audio_sound.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowMoviesWeb extends StatefulWidget {
  const ShowMoviesWeb({Key? key}) : super(key: key);

  @override
  _ShowMoviesState createState() => _ShowMoviesState();
}

class _ShowMoviesState extends State<ShowMoviesWeb> {


  var copyText='https://docs.google.com/document/d/1BX7k8q2X7C32DB2TJFqk5a2CJDg-aUBJTJIVqwo1A4Y/edit';


  bool isSoundIcon=true;
  bool isShowSoundPlay=false;
  IconData icons=Icons.play_circle_fill;
  bool showOffers=true;
  bool isBuied=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              children: [
                SizedBox(
                  height: size.width*0.40,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                             alignment: Alignment.bottomCenter,
                            children:[
                              Image.asset('assets/images/image.webp',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: size.width*0.28,),
                              Container(
                              width: double.infinity,
                              height: size.width*0.028,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  tileMode: TileMode.clamp,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white10,
                                    Colors.white12,
                                    Colors.white24,
                                    Colors.white30,
                                    Colors.white38,
                                    Colors.white54,
                                    Colors.white60,
                                    Colors.white70,
                                    Colors.white,
                                  ]
                                )
                              ),
                            ),
                              Positioned(
                                left:  size.width*0.01,
                                top:  size.width*0.01,
                                child: Container(
                                  height: size.width*0.05,
                                  width:  size.width*0.05,
                                  decoration:const  BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      Get.offNamed(Routes.categoryMovies);
                                    },
                                    child:  Center(
                                      child: Icon(Icons.arrow_forward,color: Colors.deepOrange,
                                        size:  size.width*0.05,),
                                    ),),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal:  size.width*0.015,vertical: 10),
                                  child: Container(
                                    height:  size.width*0.05,
                                    width:  size.width*0.05,
                                    decoration:const  BoxDecoration(
                                        color: Colors.black54,
                                        shape: BoxShape.circle
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                          isShowSoundPlay=!isShowSoundPlay;
                                          icons=icons==Icons.pause?Icons.play_circle_fill:Icons.pause;
                                        });
                                      },
                                      child:  Icon(icons,color: Colors.deepOrange,
                                        size:  size.width*0.05,),),
                                  ),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Row(
                          children: [
                            SizedBox(width: size.width*0.20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10,top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      InkWell(onTap:(){
                                        Get.defaultDialog(
                                          title: 'يجب عليك تسجيل الدخول لرؤيه مكتبتك او المفضله',
                                          barrierDismissible: false,
                                          buttonColor:
                                          Colors.deepOrange,
                                          content: Row(
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
                                          cancelTextColor: Colors.black,
                                          textCancel: 'العوده',
                                        );
                                      },
                                          child: Icon(FontAwesomeIcons.heartCircleBolt,color: Colors.red,size: size.width*0.025,)),
                                      SizedBox( width: size.width*0.020,),
                                       InkWell(onTap:(){
                                         Get.defaultDialog(
                                           title: 'مشاركه',
                                           barrierDismissible: false,
                                           buttonColor: Colors.deepOrange,
                                           content: Column(
                                             children: [
                                               Text('انسج الرابط'),
                                               const SizedBox(height: 10,),
                                               Container(
                                                 //color:Colors.black38,
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   children: [
                                                    Container(
                                                      color: Colors.grey.shade300,
                                                      height: 30,
                                                      width: 220,
                                                      child: SingleChildScrollView(
                                                         scrollDirection: Axis.horizontal,
                                                          child: Center(child: Padding(
                                                            padding: const EdgeInsets.all(5.0),
                                                            child: Text(copyText,
                                                            style: TextStyle(color: Colors.black),),
                                                          ))
                                                      ),
                                                    ),
                                                     const SizedBox(width: 10,),
                                                     IconButton(onPressed: (){
                                                     },
                                                         icon: Icon(Icons.copy,color: Colors.grey,
                                                         size: 30,))
                                                   ],
                                                 ),
                                               )
                                             ],
                                           ),
                                           cancelTextColor: Colors.black,
                                           textCancel: 'العوده',
                                         );
                                       },child: Icon(Icons.share,color: Colors.deepOrange,size: size.width*0.025,)),
                                      SizedBox( width: size.width*0.020,),
                                      ElevatedButton(onPressed: (){
                                        Get.defaultDialog(
                                          title: 'حول كتابك',
                                          barrierDismissible: false,
                                          buttonColor: Colors.deepOrange,
                                          content: Column(
                                            children: [
                                              Text('يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه '),
                                              const SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  InkWell(onTap:()async{
                                                    await launchUrl(Uri.parse('https://wa.me/message/XJFNP7N7WYRBJ1'));
                                                  },
                                                      child: Icon(FontAwesomeIcons.whatsapp,size: 40,color: Colors.green,)),
                                                  const SizedBox(width: 20,),
                                                  InkWell(onTap:()async{
                                                    await launchUrl(Uri.parse('https://wa.me/message/XJFNP7N7WYRBJ1'));
                                                  },child: Icon(FontAwesomeIcons.facebook,size: 40,color: Colors.blue,)),
                                                ],
                                              )
                                            ],
                                          ),
                                          cancelTextColor: Colors.black,
                                          textCancel: 'العوده',

                                        );
                                      },
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          ),),
                                          backgroundColor: MaterialStateProperty.all(Colors.deepOrange,)
                                        ),

                                        child: Text('حول كتابك',
                                          style: TextStyle(
                                              fontFamily: 'aribic',
                                              fontSize: size.width*0.014
                                              ,color: Colors.white
                                          ),),

                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: size.width*0.80,
                                  height: size.width*0.09,
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                  child:   SingleChildScrollView(
                                    child: Text('''يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (يبحث قائد (الديسيبتكانز) عن حجرة خارقة تعطي حاملها قوة بناء أقوى جيش في المجرة، والوحيد الذي يمكنه الوصول إلى هذه الحجرة لوقف (الديسيبتكانز)'''
                                      ,textAlign: TextAlign.start,
                                      //maxLines: 3,
                                      //softWrap: true,
                                      //overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: size.width*0.020,
                                          fontWeight: FontWeight.normal,
                                          color: Get.isDarkMode?Colors.white:Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                                //const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: size.width*0.15,
                          height: size.width*0.25,
                          margin:  EdgeInsets.symmetric(vertical: size.width*0.025,horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Get.isDarkMode?Colors.white:const Color(0XFFEAF5F8),
                              border: Border.all(
                                  color: Colors.deepOrange,
                                  width: 0.5
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                  child: Image.asset('assets/images/image.webp',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                               Padding(
                                padding:const  EdgeInsets.symmetric(horizontal: 8.0),
                                child:  Text('الحقيقه والسراب',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.isDarkMode?Colors.black:const Color(0XFF215480),
                                  fontSize: size.width*0.018,
                                ),
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.start,),
                              ),
                               Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0 ,vertical: 5),
                                child:  Text('احمد اسماعيل',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0XFF215480),
                                  fontSize: size.width*0.013,
                                ),
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.start,),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                 Divider(color: Get.isDarkMode?Colors.white:Colors.grey,height: 2,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(onPressed: (){
                        Get.defaultDialog(
                            title: 'حول كتابك',
                            barrierDismissible: false,
                            buttonColor: Colors.deepOrange,
                            content: Column(
                              children: [
                                Text('يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه يحكي الكتاب عن فصه '),
                                const SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(onTap:()async{

                                      /*const url = "https://flutter.io";
                                      if (await canLaunch(url))
                                      await launch(url);
                                      else
                                      // can't launch url, there is some error
                                      throw "Could not launch $url";*/
                                    },
                                child: Icon(FontAwesomeIcons.whatsapp,size: 40,color: Colors.green,)),
                                    const SizedBox(width: 20,),
                                    InkWell(child: Icon(FontAwesomeIcons.facebook,size: 40,color: Colors.blue,)),
                                  ],
                                )
                              ],
                            ),
                            textConfirm: '',
                            confirmTextColor: Colors.white,
                            cancelTextColor: Colors.black,
                            textCancel: 'العوده',
                            /*onConfirm: (){

                            }*/
                        );
                      },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: Colors.deepOrange,
                        child: Padding(
                          padding:  const EdgeInsets.all(5.0),
                          child:   Text('حول كتباتك',
                            style: TextStyle(
                                fontFamily: 'aribic',
                                fontSize: size.width*0.018,color: Colors.white
                            ),),
                        ),

                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: size.width*0.25,
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  color:  Get.isDarkMode?const Color(0XFF182430):Colors.white,
                  child: ListView.builder(
                    itemCount: 25,
                       scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            if(isBuied){
                              setState(() {
                                isShowSoundPlay=!isShowSoundPlay;
                                icons=icons==Icons.pause?Icons.play_circle_fill:Icons.pause;
                              });
                            }else{
// Get Dialog
                            }

                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [

                              HoverCrossFadeWidget(
                                duration: const Duration(milliseconds: 500),
                                firstChild: Container(
                                  width: size.width*0.15,
                                  height: size.width*0.2,
                                  margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:Get.isDarkMode?
                                    const Color(0XFFEAF5F8):Colors.white
                                    ,
                                  ),
                                  child: ClipRRect(
                                    borderRadius:  BorderRadius.circular(10),
                                    child: Image.asset('assets/images/image.webp',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                secondChild:  Container(
                                  color:  Get.isDarkMode?
                                  const Color(0XFF182430):Colors.white,
                                  child: Container(
                                    width: size.width*0.15,
                                    height: size.width*0.2,
                                    margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:Get.isDarkMode?const Color(0XFFEAF5F8):
                                        Colors.white
                                        ,
                                        border: Border.all(
                                            color: Colors.deepOrange,
                                            width: 0.5
                                        )
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                                topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                            child: Image.asset('assets/images/image.webp',
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.symmetric(horizontal: size.width*0.006,
                                              vertical: 8),
                                          child:  Text('الحلقه الاولي',style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: const Color(0XFF215480),
                                            fontSize: size.width*0.013,
                                          ),
                                            textAlign: TextAlign.center,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              isBuied?Container():Align(
                                alignment: Alignment.center,
                                child: Icon(Icons.lock,
                                  color: Colors.red,size: 80,),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                 Divider(color:  Get.isDarkMode?Colors.white:Colors.grey,height: 2,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MaterialButton(onPressed: (){

                  },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    color: Colors.deepOrange,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:   Text('الدعم والتبرع',
                        style: TextStyle(
                            fontFamily: 'aribic',
                            fontSize: size.width*0.013,color: Colors.white
                        ),),
                    ),

                  ),
                ),
                isShowSoundPlay? SizedBox(  height: size.width*0.07,):Container(),
              ],
            ),
            showOffers?Positioned(
                bottom: 0,
                right: 10,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.deepOrange,
                      height: 150,
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('احداث العروض',
                            style:TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),
                          const SizedBox(height: 10,),
                          Text('اشتري كتاب ومعه كتاب هديه',
                            style:TextStyle(
                                fontSize: 20,
                                color: Colors.white,
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
                          color: Colors.white,size: 20,),
                      ),
                    )
                  ],
                )
            ):Container(),

            isShowSoundPlay?Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                color: context.theme.backgroundColor,
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:  [
                        (size.width>880)?Image.asset('assets/images/image.webp',
                          height: size.width*0.050,width: size.width*0.050,):Container(),
                        const SizedBox(width: 15,),
                        (size.width>750)?Container(
                          width: size.width*0.15,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text('الجقيقه والسراب الجقيقه والسراب الجقيقه والسراب الجقيقه والسراب الجقيقه والسراب',style: TextStyle(
                                    color: Get.isDarkMode?Colors.white:Colors.black,
                                    fontSize: size.width*0.015,fontWeight: FontWeight.bold
                                ),),
                                Text('احمد اسماعيل',style: TextStyle(
                                    color: Get.isDarkMode?Colors.white:Colors.blueAccent,
                                    fontSize: size.width*0.012,fontWeight: FontWeight.normal
                                ),)
                              ],
                            ),
                          ),
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
              ),
            ):Container()
          ],
        ),
      ),
    );
  }
}
