
import 'package:flutter/material.dart';

void navigateTo({required BuildContext context , required Widget widget}){
  Navigator.of(context).push(
    MaterialPageRoute(builder:(context) => widget, )
  );
}
void navigateAndRemove({required BuildContext context , required Widget widget}){
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget,),
          (Route<dynamic> route)=>false
  );
}

const String basmala = "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ";