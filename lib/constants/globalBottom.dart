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
    return  Container(
      
          height: 55,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 40, right: 40, top: 12),
          child: RawMaterialButton(
          child: Text(text,textAlign: TextAlign.center, style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w700, color: Accent2
          ),),
          onPressed: () {
          },
          fillColor: PrimaryBrand,
         // hoverColor: SecondaryBrand,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          ),
        );
     }
}