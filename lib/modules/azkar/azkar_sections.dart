import 'package:flutter/material.dart';
import 'package:makkah/modules/azkar/azkar_Screen.dart';
import 'package:makkah/shared/constants.dart';
import 'package:makkah/shared/data/azkar_section._list.dart';

class AllAzkarSections extends StatelessWidget {
  const AllAzkarSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title:const Text(
          "الأذكــار",
          style:  TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
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
          padding: EdgeInsets.symmetric(horizontal: 12),
          itemCount: allAzkarSections.length,
          itemBuilder:(context, index) {
            return InkWell(
               onTap: () {
                 navigateTo(context: context,
                     widget: AzkarScreen(
                       name :allAzkarSections[index]["name"],
                       id :allAzkarSections[index]["id"]
                     ),
                 );
               },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                padding: const EdgeInsets.only(top: 30,bottom: 30),
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
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Text(
                  allAzkarSections[index]["name"],
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
