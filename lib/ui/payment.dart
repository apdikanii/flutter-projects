import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/ui/profile.dart';
import 'package:kngroo/ui/simpleMap.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(29.0),
              child: Text("Payment", textAlign: TextAlign.center, style: GoogleFonts.karla(
                        color: SeconderyText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 29),
              child: Center(
                child: Text("Please add your credit card for your account to use laundry service", 
                textAlign: TextAlign.center,
                  style: GoogleFonts.karla(
                            color: SeconderyText,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),),
              ),
            ),
            Container(
              width: 334,
              height: 205,
              margin: const EdgeInsets.only(top: 27, left: 48, right: 48),
              decoration: BoxDecoration(
                color: PrimaryBrand,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Stack(
                children: [
                    Positioned(
                      top: 60,
                      left: 39,
                      child: Text("1234  5678  9102  3456", style: GoogleFonts.karla(
                        color: PrimaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.w700
                      ),)),
                       Positioned(
                      left: 39,
                      bottom: 43,
                      child: Text("MM/YY", style: GoogleFonts.karla(
                        color: PrimaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.w700
                      ),)),
                       Positioned(
                      bottom: 43,
                      right: 28,
                      child: Text("CVV", style: GoogleFonts.karla(
                        color: PrimaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.w700
                      ),)),
                ],
              ),
            ),
           
            //shop card and buttom
            SizedBox(height: 29,),
            Container(
              height: 303,
              width: 334,
              margin: const EdgeInsets.only(top: 17, left: 34, right: 34),
              decoration: BoxDecoration(
                color: BackgroundColor,
              ),
              child: SvgPicture.asset("images/sps.svg",
               height: 400.0,
                width: 300.0,
                allowDrawingOutsideViewBox: true,),
            ),
            SizedBox(height: 65,),
            Container(
              height: 55,
              width: 350,
              child: RawMaterialButton(
              child: const Text("Add Cards"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
              },
              fillColor: PrimaryBrand,
              hoverColor: SecondaryBrand,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              ),
            )
           
          ],
        ),
      ),
    );
  }
}