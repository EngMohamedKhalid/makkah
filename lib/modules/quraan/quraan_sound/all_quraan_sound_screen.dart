import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:makkah/modules/quraan/quraan_sound/play_sound_screen.dart';
import 'package:makkah/shared/constants.dart';
import 'package:makkah/shared/data/all_sura_list.dart';


class AllQuranSoundSuraScreen extends StatelessWidget {
   AllQuranSoundSuraScreen({Key? key,  this.path, this.title}) : super(key: key);
 final AudioPlayer audioPlayer = AudioPlayer();
  final String? path ;
  final String? title ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title: Text(
          title!,
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0xff65b0bb),
                  Color(0xff5a9ea8),
                  Color(0xff508c95),
                  Color(0xff467b82),
                  Color(0xff3c6970),
                  Color(0xff32585d),
                  Color(0xff28464a),
                ]
            )
        ),
        child: ListView.builder(
          physics:BouncingScrollPhysics(),
          itemCount: allSuraList.length,
          itemBuilder:(context, index) {
            return InkWell(
              onTap: () async {
                String num = allSuraList[index]["is"];
               navigateTo(context: context, widget: PlaySoundScreen(
                 path:"$path/$num.mp3" ,
                 name: allSuraList[index]["arabic"] ,
               ));
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                  padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff3c6970),
                            offset: Offset(10,0)
                        ),
                        BoxShadow(
                            color: Color(0xff3c6970),
                            offset: Offset(10,10)
                        ),
                      ],
                      color: Color(0xff508c95),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "عدد الايات",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            allSuraList[index]["aya"].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "السورة",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            allSuraList[index]["arabic"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "رقم السورة",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            allSuraList[index]["id"].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20
                            ),),
                        ],
                      ),
                    ],
                  )
              ),
            );
          },
        ),
      ),
    );
  }
}
