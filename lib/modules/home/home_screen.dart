import 'package:flutter/material.dart';
import 'package:makkah/layout/quraan/quraan_layout.dart';
import 'package:makkah/modules/asmaa_of_alla/asmaa_of_all.dart';
import 'package:makkah/modules/azkar/azkar_sections.dart';
import 'package:makkah/modules/qibla/qibla_screen.dart';
import 'package:makkah/modules/tasbih/all_tabih_list.dart';
import 'package:makkah/modules/wudu/wudu_screen.dart';
import 'package:makkah/shared/component/home_component.dart';
import 'package:makkah/shared/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title:const Text(
        "تلُِآوُة",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Spacer(flex: 2,),
                  customHomeItem(
                    onTap: () {
                      navigateTo(context: context, widget: const AllAzkarSections());
                    },
                      text: "الأذكار",
                  ),
                 const Spacer(flex: 3,),
                  customHomeItem(
                      onTap: () {
                        navigateTo(context: context, widget:const QuraanLayoutScreen());
                      },
                      text: "الُِقٌرٍآن الُِڪرٍيم"
                  ),
                  const Spacer(flex: 2,),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                const Spacer(flex: 2,),
                  customHomeItem(
                    onTap: () {
                      navigateTo(context: context, widget: AllTasbihScreen());
                    },
                    text: "التسابيح",
                  ),
                  const Spacer(flex: 3,),
                  customHomeItem(
                      onTap: () {
                        navigateTo(context: context, widget: QiblahScreen());
                      },
                      text:"اتجاة القبلة"
                  ),
                  const Spacer(flex: 2,),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Spacer(flex: 2,),
                  customHomeItem(
                    onTap: () {
                      navigateTo(context: context, widget:const Wudu());
                    },
                    text: "تعلم الوضوء",
                  ),
                  const Spacer(flex: 3,),
                  customHomeItem(
                      onTap: () {
                        navigateTo(context: context, widget:  const AsmaaOfAll());
                      },
                      text: "أسماء الله الحسني"
                  ),
                  const Spacer(flex: 2,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
