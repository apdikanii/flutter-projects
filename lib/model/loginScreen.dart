
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kngroo/constants/style_constant.dart';
import 'package:kngroo/constants/globalBottom.dart';
import 'package:kngroo/model/backgroundImage.dart';
import 'package:quickalert/quickalert.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/color_constant.dart';
import '../ui/payment.dart';

class LoginScreenpage extends StatefulWidget {
  const LoginScreenpage({super.key});

  @override
  State<LoginScreenpage> createState() => _LoginScreenpageState();
}

class _LoginScreenpageState extends State<LoginScreenpage> {


  int _currIndex = 0;

    final login = TextEditingController();
    final signup = TextEditingController();

  showAlert() {
    showDialog(context: context,
     builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Image(image: AssetImage("images/pops.png")),
              //Title(color: Colors.black, child: Text("1. Browse")),
              Text('Choose your preferred local laundry store from dozens of options nearby. View ratings and pricing per item for each store.'),
            ],
          ),
        ),
         actions: [
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).pop(),
              }, child: const Text("Next",),
             
              )
            ],
      );
      // return CupertinoAlertDialog(
      //     content: Image.asset("images/pops.png"),
      //     title: Text("1. Browse",textAlign: TextAlign.center, style: GoogleFonts.rubik(
      //       fontSize: 26,
      //       fontWeight: FontWeight.w500,
      //       color: PrimaryBrand,
      //     ),),
          

      // );
      //   return AlertDialog(
      //  //icon: Icon(Icons.question_answer_rounded),
      //   title: const Text("1. Browse"),
      //   content: const Text("Choose your preferred local laundry store from dozens of options nearby. View ratings and pricing per item for each store."),
      //   actions: [
      //       OutlinedButton(
      //         onPressed: () => {
      //           Navigator.of(context).pop(),
      //         }, child: const Text("Next"))
      //       ],
      //   );
     }
     );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/backgroundimage.png"),
        fit: BoxFit.cover)
       ),
        child: Column(
        children: [
         // const BackgroundImage(),
          Container(
            margin: const EdgeInsets.only(top: 75, left: 157),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/kangrooicon.png"),
                 Padding(
                   padding: const EdgeInsets.only(left: 42.0),
                   child: ElevatedButton(
                    onPressed: (() => showAlert()), child: const Icon(Icons.question_mark,), ),
                 ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0, left: 105, right: 105, bottom: 22),
            child: Text("Clean Kangroo", style: kTutorialTitle,),
          ),
          Container(
            child: Column(
              children: [
                // login and password part
                const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                       fillColor: Colors.white,
                       filled: true,
                        hintText: 'Email', hintStyle: TextStyle(
                          color: hinttexts, fontSize: 17, fontWeight: FontWeight.w400),
                        prefixIcon: Icon(Icons.mail, color: PrimaryBrand),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: BackgroundColor)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white, 
                          ),
                        )
                      ),
                  ),
                ),
                const SizedBox(height: 20,),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password", hintStyle: TextStyle(
                        color: Accent1, fontSize: 17, fontWeight: FontWeight.w400),
                      prefixIcon: Icon(Icons.lock_clock_rounded, color: Color(0xFF3D5AF1),),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: BackgroundColor2)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: BackgroundColor2)
                      )
                    ),
                  ),
                ),
                //login and password part was ended
                Padding(
                  padding: const EdgeInsets.only(left: 200, right: 40, top: 12),
                  child: Text("Remember Password?",style: kloginText,),
                ),
                //login Buttom
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 12),
                  child: Column(
                    children: [
                      MyButtom(
                        controller: login,
                        text: "Log In",
                      ),
                    ],
                  )
                ),
                // line seperater
                const SizedBox(height: 45,),
                 Container(
                  child: Column(
                    children: [
                          Row(children: [
                            Expanded(
                              child:  Container(
                                  margin: const EdgeInsets.only(left: 40.0, right: 20.0),
                                  child: const Divider(
                                    color: SeconderyText,
                                    height: 36,
                                  )),
                            ),
                            const Text("OR"),
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 20.0, right: 40.0),
                                  child: const Divider(
                                    color: SeconderyText,
                                    height: 36,
                                  )),
                            ),
                        ]),
                    ],
                  ),
                 ),
                 //signUp Buttom
                 Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 80),
                  child: Column(
                    children: [
                      MyButtom(
                        controller: signup,
                        text: "Sign Up With Email",
                      ),
                    ],
                  ),
                 ),
                 Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 40, right: 40, top: 4),
                  alignment: Alignment.center,
                 
                     decoration: BoxDecoration(
                    color: BackgroundColor2,
                    borderRadius: BorderRadius.circular(6),
                  ),
                   child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                  }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
                    ),
                  child: Text("Sign Up With Google",style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w700, color: PrimaryBrand
                  ),),)
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 77, right: 77, top: 65,),
                   child: Text("Terms of Service and Privacy Policy", style: KloginHintStyle),
                 ),

              ],
            ),
          ),
        ],
        ),
      ),
      
    );
 }
}

