import 'package:flutter/material.dart';
import 'package:makkah/shared/data/asmaa_of_alla.dart';

class AsmaaOfAll extends StatelessWidget {
  const AsmaaOfAll({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title: const Text(
          "أسماء الله الحسنى",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Colors.white,
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
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: asmaaOfAlla.length,
            itemBuilder: (context, index) {
              return Text(
                asmaaOfAlla[index],
                style: const TextStyle(
                    height: 2,
                    fontSize: 30,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              );
            }
        ),
      ),
    );
  }
}
