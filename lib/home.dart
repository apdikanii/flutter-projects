
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/ui/payment.dart';
import 'package:kngroo/ui/simpleMap.dart';
import 'model/backgroundImage.dart';
import 'model/loginScreen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //SimpleMap(),
         // Payment(),
        BackgroundImage(),
       LoginScreenpage(),
      ],
    );
  }
}
