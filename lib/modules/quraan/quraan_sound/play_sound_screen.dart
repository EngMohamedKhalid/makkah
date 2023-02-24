// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class PlaySoundScreen extends StatefulWidget {
  PlaySoundScreen({Key? key, required this.path, required this.name}) : super(key: key);
  final String path;
  final String name;
  @override
  State<PlaySoundScreen> createState() => _PlaySoundScreenState();
}

class _PlaySoundScreenState extends State<PlaySoundScreen> {
  AudioPlayer audioPlayer = AudioPlayer();

  Duration duration = Duration();

  Duration position = Duration();
  double mints = 0;
  double hours = 0;

  bool isPlaying = true;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
     audioPlayer.play(
         UrlSource(
        widget.path,
         )
     );
      setState(() {
        isPlaying =false;
      });
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration = dd;
      });
    });
    audioPlayer.onPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
    Fluttertoast.showToast(
        msg: "الرجاء التاكد من الاتصال بالانترنت",
        backgroundColor:  Color(0xff28464a),
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 50,
        gravity: ToastGravity.TOP
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
    Fluttertoast.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff65b0bb),
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
        child: Center(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 30,vertical: 40),
            decoration: BoxDecoration(
              color: Color(0xff467b82),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff28464a),
                  offset: Offset(-5,0)
                ),
                BoxShadow(
                    color: Color(0xff28464a),
                    offset: Offset(5,0)
                ),
                BoxShadow(
                    color: Color(0xff28464a),
                    offset: Offset(0,5)
                ),
                BoxShadow(
                    color: Color(0xff28464a),
                    offset: Offset(0,-5)
                ),
              ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70,),
                Expanded(
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                        color: Color(0xff28464a),
                      shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color:Colors.white,
                              offset: Offset(-5,0)
                          ),
                        ]
                    ),
                    child: Text(
                      "${widget.name} ",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Slider(
                  min: 0.0,
                  thumbColor:  Color(0xff28464a),
                  activeColor: Colors.white,
                  inactiveColor: Color(0xff65b0bb),
                  label: "Swipe",
                  mouseCursor: MouseCursor.uncontrolled,
                  //divisions: 50,
                  value: position.inSeconds.toDouble(),
                  max: duration.inSeconds.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      audioPlayer.seek(Duration(seconds: value.toInt()));
                      if( position.inSeconds==60){
                        mints = mints+1;
                      }else if(mints==60){
                        hours = hours+1;
                      }
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        "${hours.toInt()}:${mints.toInt()}:${position.inSeconds.toInt().toString()}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    isPlaying==true?
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white
                      ),
                        onPressed: () async {
                          var res= audioPlayer.play(UrlSource(
                              widget.path));
                          setState(() {
                            isPlaying =false;
                          });
                          audioPlayer.onDurationChanged.listen((Duration dd) {
                            setState(() {
                              duration = dd;
                            });
                          });
                          audioPlayer.onPositionChanged.listen((Duration dd) {
                            setState(() {
                              position = dd;
                            });
                          });
                        },
                        child:
                        Icon(
                          Icons.play_circle_fill_outlined ,
                          size: 40,
                        )
                    ):
                    TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white
                        ),
                        onPressed: () async {
                          await audioPlayer.pause();
                          setState(() {
                            isPlaying =true;
                          });
                          audioPlayer.onDurationChanged.listen((Duration dd) {
                            setState(() {
                              duration = dd;
                            });
                          });
                          audioPlayer.onPositionChanged.listen((Duration dd) {
                            setState(() {
                              position = dd;
                            });
                          });
                        },
                        child:
                        Icon(
                          Icons.pause_circle_filled,
                          size: 40,
                        )),
                  ],
                ),
               Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
