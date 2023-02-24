import 'package:flutter/material.dart';

class TadbihScreen extends StatefulWidget {
  const TadbihScreen({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  State<TadbihScreen> createState() => _TadbihScreenState();
}
class _TadbihScreenState extends State<TadbihScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:   Color(0xff65b0bb),
          title:const Text(
            "سـبـحـتـي",
            style:  TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color:Color(0xff28464a),
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
          child: Center(
            child: Column(
            children: [
              const SizedBox(height: 15,),
              Expanded(
                child: Text(
                 widget.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Text(
                  "$counter ",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0xff28464a),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff32585d),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 38,
                      ),
                      Text(
                        'إعاده تعيين',
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
    ),
          ),
        ),
    );
  }
}
