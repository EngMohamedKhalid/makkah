// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:makkah/models/quran_model.dart';
import 'package:makkah/shared/constants.dart';
import 'package:makkah/shared/data/all_quran_text.dart';

class SuraScreen extends StatefulWidget {
  SuraScreen(
      {Key? key, required this.id, required this.name, required this.length})
      : super(key: key);
  final int id;
  final int length;
  final String name;

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  List list = [];
  List list2 = [];
  @override
  void initState() {
    list = [];
    list2 = [];
    allQuranText.forEach((element) {
      QuranModel quranModel = QuranModel.fromJson(element);
      if (element["surah_number"] == widget.id) {
        list.add(quranModel.content);
        list2.add(quranModel.verseNumber);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:   Color(0xff65b0bb),
        appBar: AppBar(
          backgroundColor:   Color(0xff65b0bb),
          centerTitle: true,
          title: Text(
            widget.name,
            style: const TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child:
          Column(
            children: [
              const Text(
                basmala,
                style: TextStyle(
                    fontSize:28,
                    color:  Color(0xff28464a),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List<Widget>.generate(list.length, (index) {
                  return
                    RichText(
                    textAlign: TextAlign.center,
                    text:
                    TextSpan(
                      children: [
                        TextSpan(
                          text: " ${list[index]} ",
                          style: const TextStyle(
                              fontSize:28,
                              color: Colors.white,
                            //Color(0xffEABE7C)
                          ),
                        ),
                        TextSpan(
                          text: "{${list2[index].toString()}}",
                          style: const TextStyle(
                              fontSize:20,
                              color: Colors.black,

                          ),
                        ),
                      ]
                    ),
                  );
                },
              )
              )
            ],
          ),
          ),
        )

        );
  }
}
