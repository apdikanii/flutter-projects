import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:size_config/size_config.dart';
import 'package:flutter/widgets.dart';


class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}


class _RequestState extends State<Request> {

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      // body:  Column(
      //   children: [
      //     SizedBox(
      //       height: SizeConfig.blockSizeVertical*50,
      //       //height: SizeConfig.screenHeight * 50,
      //       child: Stack(
      //         children: [
      //           Image.asset("images/map.png",
      //           height: SizeConfig.blockSizeVertical * 60,
      //           width: double.infinity,
      //           fit: BoxFit.cover,),
      //           Align(
      //             alignment: Alignment.bottomCenter,
      //             child: Container(
      //               height: 40,
      //               width: double.infinity,
      //               decoration: const BoxDecoration(
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(42),
      //                   topRight: Radius.circular(42)
      //                 ),
      //                 color: PrimaryBrand,
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

// class SizeConfig {
//   static var blockSizeVertical;
  
//   void init(BuildContext context) {}
// }
// class SizeConfig {
//  static MediaQueryData _mediaQueryData;
//  static double screenWidth;
//  static double screenHeight;
//  static double blockSizeHorizontal;
//  static double blockSizeVertical;
 
//  void init(BuildContext context) {
//   _mediaQueryData = MediaQuery.of(context);
//   screenWidth = _mediaQueryData.size.width;
//   screenHeight = _mediaQueryData.size.height;
//   blockSizeHorizontal = screenWidth / 100;
//   blockSizeVertical = screenHeight / 100;
//  }
// }