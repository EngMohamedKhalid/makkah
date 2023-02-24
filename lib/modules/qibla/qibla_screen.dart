import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:makkah/modules/qibla/qibla_compass.dart';

class QiblahScreen extends StatelessWidget {
  const QiblahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xff65b0bb),
        centerTitle: true,
        title: Text(
          "اتجاة القبلة",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
        ),
      ),
      body: FutureBuilder(
        future:FlutterQiblah.androidDeviceSensorSupport(),
        builder: (context, AsyncSnapshot<bool?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return  Center(
              child: CircularProgressIndicator(
                color: Color(0xff65b0bb),
                backgroundColor: Color(0xff65b0bb),
              ),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error.toString()}"),
            );
          }
          if (snapshot.data!) {
            return QiblahCompass();
          } else {
            return const Center(
              child: Text("Your device is not supported"),
            );
          }
        },
      ),
    );
  }
}
