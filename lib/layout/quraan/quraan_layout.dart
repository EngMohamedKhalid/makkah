import 'package:flutter/material.dart';
import 'package:makkah/modules/quraan/all_sura_screen.dart';
import 'package:makkah/modules/quraan/quraan_sound/sheikh_name.dart';

class QuraanLayoutScreen extends StatelessWidget {
  const QuraanLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:   Color(0xff65b0bb),
          centerTitle: true,
          title:const Text(
            "الُقرٍآن الُگرٍيَم",
            style: TextStyle(
                fontSize: 27.5,
                fontWeight: FontWeight.w600,
                color: Colors.white
            ),
          ),
          bottom: TabBar(
            labelColor:  Color(0xff28464a),
            unselectedLabelStyle: TextStyle(
              fontSize: 17
            ),
            indicatorColor: Color(0xff28464a),
              physics: BouncingScrollPhysics(),
              indicatorWeight: 4,
              tabs: [
                Tab(
                  text: "قراءة",
                ),
                Tab(
                  text: "استماع",
                ),
              ],
          ),
        ),
        body: TabBarView(
          children: [
            AllQuranSuraScreen(),
            SheikhNameScreen()

          ],
        ),
      ),
    );
  }
}
