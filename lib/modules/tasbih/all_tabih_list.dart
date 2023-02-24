// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:makkah/modules/tasbih/tasbih_screen.dart';
import 'package:makkah/shared/constants.dart';
import 'package:makkah/shared/data/tasbih_list.dart';

class AllTasbihScreen extends StatelessWidget {
   AllTasbihScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title:const Text(
          "سـبـحـتـي",
          style:  TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color:Colors.white
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
          physics: BouncingScrollPhysics(),
          itemCount: tasbih.length,
          itemBuilder:(context, index) {
            return InkWell(
              onTap: () {
                navigateTo(context: context,
                  widget: TadbihScreen(
                      name :tasbih[index],
                  ),
                );
              },
              child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  padding: const EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
                  decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text(
                    tasbih[index],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 23
                    ),
                  )
              ),
            );
          },
        ),
      ),
    );
  }
}
