import 'package:flutter/material.dart';

Widget customHomeItem({
  required String text,
  void Function()? onTap
}){
  return  InkWell(
    onTap: onTap,
    child: Container(
      alignment: Alignment.center,
      width: 150,
      height: 150,
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
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    ),
  );
}