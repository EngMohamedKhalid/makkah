import 'package:flutter/material.dart';
import 'package:makkah/modules/quraan/quraan_sound/all_quraan_sound_screen.dart';
import 'package:makkah/shared/component/custom_sheikh_item.dart';
import 'package:makkah/shared/constants.dart';

class SheikhNameScreen extends StatelessWidget {
  const SheikhNameScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Color(0xff65b0bb),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
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
          child: Column(
            children: List<Widget>.generate(1, (index) {
              return ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 12),
                children: [
                  customSheikhItem( sheikhName: "حسن صالح", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server16.mp3quran.net/h_saleh/Rewayat-Hafs-A-n-Assem",
                        title: "الشيخ حسن صالح",
                      ),
                    );
                   },),
                  customSheikhItem( sheikhName: "مشاري العفاسي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server8.mp3quran.net/afs",
                        title:"الشيخ مشاري العفاسي" ,
                      ),
                    );
                  },),
                  customSheikhItem(sheikhName: "فارس عباد", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server8.mp3quran.net/frs_a",
                          title: "الشيخ فارس عباد",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "سعد الغامدي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server7.mp3quran.net/s_gmd",
                        title: "الشيخ سعد الغامدي",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "ياسر الدوسري", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server11.mp3quran.net/yasser",
                        title: "الشيخ ياسر الدوسري",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "عبدالباسط عبدالصمد", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server7.mp3quran.net/basit/Almusshaf-Al-Mojawwad",
                        title: "الشيخ عبدالباسط عبدالصمد",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "محمد صديق المنشاوي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server10.mp3quran.net/minsh",
                        title: "الشيخ محمد صديق المنشاوي",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "خالد القحطاني", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server10.mp3quran.net/qht",
                        title: "الشيخ خالد القحطاني",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "ماهر المعيقلي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server12.mp3quran.net/maher",
                        title: "الشيخ ماهر المعيقلي",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "محمود خليل الحصري", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server13.mp3quran.net/husr",
                        title: "الشيخ محمود خليل الحصري",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "محمد الطبلاوي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server12.mp3quran.net/tblawi",
                        title: "الشيخ محمد الطبلاوي",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "رعد محمد الكردي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server6.mp3quran.net/kurdi",
                        title:"الشيخ رعد محمد الكردي" ,
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "مصطفى إسماعيل", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server8.mp3quran.net/mustafa",
                        title:"الشيخ مصطفى إسماعيل" ,
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "ناصر القطامي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server6.mp3quran.net/qtm",
                        title: "الشيخ ناصر القطامي",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "بدر التركي", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server10.mp3quran.net/bader/Rewayat-Hafs-A-n-Assem",
                        title: "الشيخ بدر التركي",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "عبدالله الكندري", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server10.mp3quran.net/Abdullahk",
                        title: "الشيخ عبدالله الكندري",
                      ),
                    );
                  },),
                  customSheikhItem( sheikhName: "محمود علي البنا", onTap: () {
                    navigateTo(context: context,
                      widget: AllQuranSoundSuraScreen(
                        path: "https://server8.mp3quran.net/bna/Almusshaf-Al-Mojawwad",
                        title:"الشيخ محمود علي البنا" ,
                      ),
                    );
                  },),

                ],
              );
            },

            )
          ),
        ),
      ),
    );
  }
}
