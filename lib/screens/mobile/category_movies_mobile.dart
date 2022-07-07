
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:panda_rosh/unit/routes.dart';
import 'package:panda_rosh/widget/drawer.dart';


class CategoryMoviesMobile extends StatelessWidget {
  const CategoryMoviesMobile({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.deepOrange,
            elevation: 0.0,
            backgroundColor:  Get.isDarkMode?const Color(0XFF2B2D2F): const Color(0XFFF8F8F8),
title:  Text('باندا روش',style: TextStyle(
  color: Colors.deepOrange,
  fontSize: size.width*0.06,
  fontFamily: 'aribic',
  fontWeight: FontWeight.bold,
  //fontStyle: FontStyle.italic,
),),
          ),
          backgroundColor: context.theme.backgroundColor,
          drawer:const BuildDrawer(),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              GridView.builder(
                  padding: const EdgeInsets.all(5),
                  shrinkWrap: false,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 200,
                      crossAxisSpacing: 8,
                      childAspectRatio: 3/2),
                  itemCount: 25,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: ()=>Get.toNamed(Routes.showMovies),
                      child: Container(
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
                            Expanded(
                              flex: 2,
                              child: Stack(
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
                            ),
                            Expanded(
                              child: Padding(
                                padding:  const EdgeInsets.symmetric(horizontal: 8.0,vertical: 6),
                                child:  Text('الحقيقه والسراب',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Get.isDarkMode?Colors.white:const Color(0XFF215480),
                                  fontSize: size.width*0.04,
                                ),
                                  textAlign: TextAlign.start,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              const MusicPlayer(),

            ],
          ),
        ),
      ),
    );
  }
}

// music Player

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.theme.backgroundColor,
      child: SizedBox(
        height: 80,
        width: double.infinity,
      child:Row(
        children: [
          InkWell(
            onTap: ()=>Get.to(const MusicScreen()),
            child: Image.asset('assets/images/image.webp',
              height: 60,width: 60,),
          ),
          const SizedBox(width: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text('الجقيقه والسراب',style: TextStyle(
                  color: Get.isDarkMode?Colors.white:Colors.black,
                  fontSize: MediaQuery.of(context).size.width*0.05,fontWeight: FontWeight.bold
              ),),
              Text('احمد اسماعيل',style: TextStyle(
                  color: Get.isDarkMode?Colors.white:Colors.blueAccent,
                  fontSize: MediaQuery.of(context).size.width*0.04,fontWeight: FontWeight.normal
              ),)
            ],
          ),

          const Spacer(),
          const  Icon(Icons.loop_sharp,color: Colors.grey,size: 20,),
          const Spacer(),
          Icon(Icons.skip_next_rounded,color: Get.isDarkMode?Colors.white:Colors.black,size: 30,),
          const Spacer(),
          const Icon(Icons.play_circle_filled_sharp,color: Colors.blue,size: 50,),
          const Spacer(),
          Icon(Icons.skip_previous_rounded,color: Get.isDarkMode?Colors.white:Colors.black,size: 30,),
          const Spacer(),
          const Icon(Icons.audiotrack,color: Colors.grey,size: 20,),
          const Spacer(),

        ],
      ),
      ),
    );
  }
}
class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppBar(
          backgroundColor: context.theme.backgroundColor,
          elevation: 0.0,
          foregroundColor: Colors.deepOrange,
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('الجقيقه والسراب',style: TextStyle(
                        color: Get.isDarkMode?Colors.white:Colors.black,
                        fontSize: MediaQuery.of(context).size.width*0.07,fontWeight: FontWeight.bold
                    ),),
                    Text('احمد اسماعيل',style: TextStyle(
                        color: Get.isDarkMode?Colors.white:Colors.blueAccent,
                        fontSize: MediaQuery.of(context).size.width*0.06,fontWeight: FontWeight.normal
                    ),),
                    const SizedBox(height: 15,),
                    Image.asset('assets/images/image.webp',
                      height: 300,width: 300,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(FontAwesomeIcons.heartCircleBolt,color: Colors.red,),
                        Icon(FontAwesomeIcons.share,color: Colors.deepOrange,),
                        Icon(FontAwesomeIcons.volumeHigh,color: Colors.deepOrange,),

                      ],
                    ),
                    Slider(value: 1,
                      min: 1,
                      max: 10,
                      thumbColor: Colors.blueAccent,
                      divisions: 1,
                      inactiveColor: Colors.grey.shade300,
                      activeColor: Colors.grey.shade300,
                      onChanged: (value){},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const  [
                        Text('0:01',style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
                        Text('3:11',style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const  Icon(Icons.loop_sharp,color: Colors.grey,size: 30,),
                        const Spacer(),
                        Icon(Icons.skip_next_rounded,color: Get.isDarkMode?Colors.white:Colors.black,size: 40,),
                        const Icon(Icons.play_circle_filled_sharp,color: Colors.blue,size: 50,),
                        Icon(Icons.skip_previous_rounded,color: Get.isDarkMode?Colors.white:Colors.black,size: 40,),
                        const Spacer(),
                        const Icon(Icons.audiotrack,color: Colors.grey,size: 30,),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    MaterialButton(
                      onPressed: ()=>Get.to( MoreMusicScreen()),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      color: Colors.deepOrange,
                      child: Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Text('المزيد ',
                              style: TextStyle(
                                  fontFamily: 'aribic',
                                  fontSize: 18,color: Colors.white
                              ),),
                            SizedBox(width: 5,),
                            Icon(Icons.keyboard_arrow_up,
                              color: Colors.white,)
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all( 12),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MoreMusicScreen extends StatefulWidget {
  MoreMusicScreen({Key? key}) : super(key: key);

  @override
  State<MoreMusicScreen> createState() => _MoreMusicScreenState();
}

class _MoreMusicScreenState extends State<MoreMusicScreen> {
  IconData icons=Icons.play_circle_fill;

  @override
  Widget build(BuildContext context) {

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: context.theme.backgroundColor,
          appBar:AppBar(
            foregroundColor: Colors.deepOrange,
            backgroundColor: context.theme.backgroundColor,
            elevation: 0.0,
          ),
          body: ListView.builder(
              itemCount: 25,
              itemBuilder: (context,index){
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/image.webp',),
                  ),
                  title: Text('الحقيقه والسراب',
                    style: TextStyle(color: Get.isDarkMode?Colors.grey:Colors.black,
                        fontSize: 25),) ,
                  subtitle: const Text('الحقيقه والسراب',
                    style: TextStyle(color: Colors.blueAccent,
                        fontSize: 20),) ,
                  trailing: IconButton(
                    color: Colors.deepOrange,
                    onPressed: (){
                      setState(() {
                        icons=icons==Icons.pause?Icons.play_circle_fill:Icons.pause;
                      });
                    },
                    icon: Icon(icons),
                  ),
                );

              }),
        ));
  }
}



