import 'package:flutter/material.dart';

Widget customSheikhItem({
  required String sheikhName,
  required VoidCallback onTap
}){
  return InkWell(
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
        padding: const EdgeInsets.only(top: 20,bottom: 20),
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
    ),
        child: Text(
          sheikhName ,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 23
          ),
        )
    ),
  );
}