// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:makkah/models/azkar_model.dart';
import 'package:makkah/shared/data/all_azkar_text.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key, required this.name, required this.id}) : super(key: key);
  final String name ;
  final int id ;
  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}
class _AzkarScreenState extends State<AzkarScreen> {
  List list =[];
  List list2 =[];
  List list3 =[];
  List list4 =[];
  final PageController pageController = PageController();
  int count = 0 ;
  @override
  void initState() {
    list= [];
    list2= [];
    list3= [];
    list4= [];
    allAzkarText.forEach((element) {
      AzkarModel azkarModel =  AzkarModel.fromJson(element);
      if(element["section_id"]==widget.id) {
        list.add(azkarModel.content);
        list2.add(azkarModel.reference);
        list3.add(azkarModel.count);
        list4.add(azkarModel.description);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title: Text(
          widget.name,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Colors.white
          ),
        ),
      ),
      body:
      Container(
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
        child: Align(
          alignment: Alignment.center,
          child: PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            children: List<Widget>.generate(list.length, (index) {
              return
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          elevation: 50,
                          color: Color(0xff65b0bb),
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            physics: BouncingScrollPhysics(),
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  list[index],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    height: 1.5,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Text(
                                "التكرار:${list3[index]}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  height: 2,
                                  fontSize: 20,
                                ),
                              ) ,
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 750),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );

                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            left: 40,
                            right: 40
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff5a9ea8),
                                  offset: Offset(0,5)
                              ),
                            ],
                            color: Color(0xff65b0bb),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text(
                          "التالي",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            height: 2,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        ) ,
                      ),
                    ),
                    Spacer()

                  ],
                );
            },
            ),

          ),
        ),
      ),
    );
  }
}
