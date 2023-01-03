import 'package:flutter/material.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/constants/style_constant.dart';
import 'dart:ui';

import 'package:kngroo/ui/payment.dart';

class MyButtom extends StatelessWidget {
  const MyButtom({super.key, required this.controller, required this.text});
  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 350,
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: PrimaryBrand,
        borderRadius: BorderRadius.circular(6),
      ),
      child: ElevatedButton(
        onPressed: () { 
         },
         style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF3D5AF1)),
         ),
      //child: Padding(
        //padding: const EdgeInsets.only(left: 19.0, right: 17, top: 15, bottom: 15),
        child: Text(text,textAlign: TextAlign.center, style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w700, color: Accent2
        ),),
      ),
      
    );
  }
}