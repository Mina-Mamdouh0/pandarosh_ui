

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import 'audio_sound.dart';

class CardAudio extends StatelessWidget {
  const CardAudio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Card(
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
    );
  }
}



class AudioThePlayer extends StatefulWidget {
  const AudioThePlayer({Key? key}) : super(key: key);

  @override
  _AudioThePlayerState createState() => _AudioThePlayerState();
}

class _AudioThePlayerState extends State<AudioThePlayer> {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              const Text('0:01',style: TextStyle(color: Colors.blueAccent,fontSize: 15),),
              const Spacer(),
              const  Icon(Icons.loop_sharp,color: Colors.grey,size: 20,),
              const Spacer(),
              Icon(Icons.skip_next_rounded,color: Get.isDarkMode?Colors.white:Colors.black,size: 30,),
              const Icon(Icons.play_circle_filled_sharp,color: Colors.blue,size: 40,),
              Icon(Icons.skip_previous_rounded,color: Get.isDarkMode?Colors.white:Colors.black,size: 30,),
              const Spacer(),
              const Icon(Icons.audiotrack,color: Colors.grey,size: 20,),
              const Spacer(),
              const Text('3:11',style: TextStyle(color: Colors.blueAccent,fontSize: 15),),


            ],
          ),
          Expanded(
            child: Slider(value: 1,
              min: 1,
              max: 10,
              thumbColor: Colors.blueAccent,
              divisions: 1,
              inactiveColor: Colors.grey.shade300,
              activeColor: Colors.grey.shade300,
              onChanged: (value){},
            ),
          )
        ],
      ),
    );
  }
}
