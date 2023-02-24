import 'package:flutter/material.dart';

class Wudu extends StatelessWidget {
  const Wudu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title: const Text(
          "تعلم الوضـوء",
          style:  TextStyle(
            fontSize: 22,
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
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              "يُعتبر الوضوء شرطاً لصحّة الصّلاة؛ إذ لا تجوز الصّلاة من غير وضوء،"
                  " فقد قال رسول الله -صلّى الله عليه وسلّم-: (لا تُقبَلُ صلاةُ أحدِكم إذا أحْدَثَ حتى يَتَوَضَّأَ)، "
                  "كما تُشتَرَطُ الموالاة في خطوات الوضوء؛ فلا يجوز تقديم أيّ خطوة من خطوات الوضوء على الأخرى",
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16,),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(١",
                    style: TextStyle(
                      fontSize: 20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "النية والبسملة",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  subtitle:Text(
                    "تُعَدُّ النّيّة شرطاً من شروط الوضوء عند جمهور العلماء، بينما قال"
                        " الحنفية بعدم اشتراطها للوضوء، واستدل الجمهور بقول"
                        " رسول الله -صلّى الله عليه وسلّم-: (إنَّما الأعمالُ بالنّياتِ)"
                        "، وذلك لأنّ الوضوء عبادة فلا بُدّ أن تسبِقَهُ نيّة."
                        " والنِّيّة في الوضوء محلّها القلب؛ أيّ يجب أن تُستحضر النية في"
                        " القلب عند الذّهاب للوضوء وليس المقصود قولها باللسان؛"
                        " إذ لم يَرِد ذلك عن رسول الله -صلّى الله عليه وسلّم-،"
                        " ومن ثمّ يقوم المسلم بالتّسمية فيقول: بسم الله.",

                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٢",
                    style: TextStyle(
                      fontSize: 20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "غسل الكفين",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  subtitle:Text(
                    " بعد أن ينوي المسلم الوضوء"
                        "  بقلبه ويُسمِّ الله يقوم بغسل الكفّين ثلاث مرات، ولا يُعَدُّ غسل الكفّين من واجبات الوضوء لقول الله"
                        "-تعالى-: (يَا أَيُّهَا الَّذِينَ آمَنُوا إِذَا قُمْتُمْ إِلَى الصَّلَاةِ فَاغْسِلُوا وُجُوهَكُمْ)، فبدأ بالوجه ولم يَذكَر غسل "
                        " الكفّين، فغسلُ الكفين يُعَدُّ"
                        " سنّة من سنن الوضوء لفعل رسول الله"
                        " -صلّى الله عليه وسلّم- ذلك، فعن حذيفة بن أوسٍ الثقفيّ قال: (رأيتُ رسولَ اللهِ صلَّى اللهُ عليه وسلم استوكفَ ثلاثًا)، أيّ غسل كفّيه ثلاثاً.",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize:22,
                        color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٤",
                    style: TextStyle(
                      fontSize:20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "المضمضة",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  subtitle:Text(
                    "بعد أن يغسل المتوضّئ كفّيه يقوم بالمضمضة؛ وهي أن يأخذ حفنةً"
                        " من الماء و يحرِّكه في فمه ثلاث مرّات، ويليها الاستنشاق؛"
                        " وهو أن يأخذ الماء من كفّيه بقوة النَّفس ثلاث مرات، ثمّ "
                        "الاستنثار؛ وهو إخراج الماء الذي أدخله بالاستنشاق وهو يدفع نَفَسَهُ ثلاث مرات",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٤",
                    style: TextStyle(
                      fontSize: 20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "غسل الوجه",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  subtitle:Text(
                    "بعد أن يتمضمض المتوضّئ ويستنشق ويستنثر يأتي غسل الوجه ثلاثاً؛"
                        " وهو واجب من واجبات الوضوء لقول الله -تعالى-: (يَا أَيُّهَا الَّذِينَ آمَنُوا"
                        " إِذَا قُمْتُمْ إِلَى الصَّلَاةِ فَاغْسِلُوا وُجُوهَكُمْ)،[٨] وغسل الوجه يكون من حدود الوجه"
                        " من الأعلى إلى الأسفل؛ أيّ من منبت الشعر إلى الذّقن،"
                        " وإن كان للرّجل لحية كثيفة يقوم بتخليلها بالماء",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٥",
                    style: TextStyle(
                      fontSize:20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "غسل اليدين",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  subtitle:Text(
                    "بعد غسل الوجه يقوم المتوضّئ"
                        " بغسل اليدين إلى المِرفقين وهو من واجبات الوضوء فلا يصحُّ الوضوء إلّا به، قال -تعالى-:"
                        " (يَا أَيُّهَا الَّذِينَ آمَنُوا إِذَا قُمْتُمْ إِلَى الصَّلَاةِ فَاغْسِلُوا وُجُوهَكُمْ وَأَيْدِيَكُمْ إِلَى الْمَرَافِقِ)،[٨]"
                        " ويبدأ غسل اليدين ابتداءً من أطراف الأصابع حتى يصل إلى المرفقين ثلاثاً",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٦",
                    style: TextStyle(
                      fontSize: 20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "مسح الرأس",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize:20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  subtitle:Text(
                    "بعد غسل"
                        " اليدين إلى المِرفقين يأتي مسح الرأس، وهو واجب من واجبات الوضوء لقول الله -تعالى-"
                        ": (يَا أَيُّهَا الَّذِينَ آمَنُوا إِذَا قُمْتُمْ إِلَى الصَّلَاةِ فَاغْسِلُوا وُجُوهَكُمْ وَأَيْدِيَكُمْ إِلَى الْمَرَافِقِ"
                        " وَامْسَحُوا بِرُءُوسِكُمْ)، وكيفيّة المسح تكون من مقدّمة الرّأس حتى مؤخرته"
                        " ويعود ماسحاً من مؤخّرة رأسه إلى المقدمة، ويجوز المسح من مقدمة"
                        " الرّأس إلى مؤخّرته فقط والمرأة كذلك، ولا تمسح المرأةُ على ظفائرها" ,
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٧",
                    style: TextStyle(
                      fontSize:20,
                      color:  Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "مسح الأذنين",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  subtitle:Text(
                    "بعد مسح الرأس يأتي مسح الأذنين ويكون بمسح"
                        " الأذنين ظاهرهما وباطنهما، وذهب الفقهاء في حكم مسح الأذنين إلى قولين\n"
                        " ذهب جمهور الفقهاء إلى أنّ مسح الأذنين سنّة من سنن الوضوء، واستدلّوا على ذلك بالأدلّة"
                        " الواردة عن ترك رسول الله -صلّى الله عليه وسلّم- مسح الأذنين. وذهب الحنابلة"
                        " وبعض المالكيّة إلى أنّ مسح الأذنين من واجبات الوضوء، واستدلّوا على قولهم"
                        " أنّ الأذنين جزء من الرأس، وعليه فإنّها تتبع حكم مسح الرّأس من الوجوب",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color:  Color(0xff28464a),
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  trailing:Text(
                    "(٨",
                    style: TextStyle(
                      fontSize:20,
                      color: Color(0xff65b0bb),
                    ),
                  ),
                  dense: false,
                  title:Text(
                    "غسل القدمين مع الكعبين",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize:20,
                      color:Colors.white,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  subtitle:Text(
                    "يأتي بعد مسح الأذنين غسل القدمين مع الكعبين،"
                        "وهو من واجبات الوضوء لقول الله -تعالى-: "
                        "(يَا أَيُّهَا الَّذِينَ آمَنُوا إِذَا قُمْتُمْ إِلَى الصَّلَاةِ فَاغْسِلُوا وُجُوهَكُمْ وَأَيْدِيَكُمْ إِلَى الْمَرَافِقِ وَامْسَحُوا بِرُءُوسِكُمْ وَأَرْجُلَكُمْ إِلَى الْكَعْبَيْنِ) وكلمة "
                        "  وَأَرْجُلَكُمْ  جاءت معطوفةً على  وُجُوهَكُمْ  و ، فيكون المعنى: فاغسلوا وجهكم وأيديكم وأرجلكم إلى الكعبين"
                        " . ويؤيّد ذلك قول رسول الله -صلّى الله عليه وسلّم-: (ويلٌ للأعقابِ وبطونِ الأقدامِ من النارِ)،"
                        " فمن الواجب غسل القدمين من رؤوس الأصابع حتى الكعبين ولا يقلل من ذلك، قد توعّد رسول"
                        " الله -صلّى الله عليه وسلّم- من يفعل ذلك بالنّار",
                    textAlign: TextAlign.right,
                    style:  TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
