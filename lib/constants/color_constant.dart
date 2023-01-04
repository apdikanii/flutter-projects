
import 'package:flutter/material.dart';




const BackgroundColor = Color(0xFFA2A2A4);
const PrimaryBrand = Color(0xFF3D5AF1);
const SecondaryBrand = Color(0xFFFF7A3C);
const hinttexts = Color(0xFFC9C9C9);
const Accent1 = Color(0xFF22D1EE);
const Accent2 = Color(0xFFE2F3F5);
const PrimaryText = Color(0xFFFFFFFF);
const SeconderyText = Color(0xF0000000);
const BackgroundColor2 = Color(0xFFFFFFFF);
const ProfileBackground = Color(0xF0F9F9F9);


    // return Container(
    //   margin: EdgeInsets.only(top: 20.0),
    //   child: Padding(
    //     padding: const EdgeInsets.all(18.0),
    //     child: Column(
    //       children: [
    //        Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 116.0),
    //             child: SizedBox(
    //               height: 116,
    //               width: 116,
    //               child: IconButton(onPressed: null, icon: Image.asset("images/kangrooicon.png"), iconSize: 0, ),
    //             )
    //           ),
    //         ElevatedButton(
    //           onPressed: (() => showAlert()), child: Icon(Icons.question_mark),)
    //         ],
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //        ),
    //        // IconButton(onPressed: null, icon: Image.asset("images/kangrooicon.png")),
              
    //           SizedBox(height: 50.0,),
    //               const Text(
    //                 'Clean Kangroo',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 26.0,
    //                   fontWeight: FontWeight.w500,
    //                 ),
    //               ),
    //           SizedBox(height: 44.0,),
    //          const TextField(
    //             keyboardType: TextInputType.emailAddress,
    //             decoration: InputDecoration(
    //               fillColor: Colors.transparent,
    //               hintText: 'Email', hintStyle: TextStyle(color: Colors.white),
    //               prefixIcon: Icon(Icons.mail, color: Colors.blue),
    //               contentPadding: EdgeInsets.all(8.0),
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide: BorderSide(
    //                   width: 3, color: Colors.white, 
    //                 ),
    //               )
    //             ),
    //           ),
    //           SizedBox(height: 26.0,),
    //          const TextField(
    //             obscureText: true,
    //             decoration: InputDecoration(
    //               enabledBorder: OutlineInputBorder(
    //                 borderSide: BorderSide(
    //                     width: 3, color: Colors.white), //<-- SEE HERE
    //               ),
    //               hintText: "Password", hintStyle: TextStyle(color: Colors.white),
    //               prefixIcon: Icon(Icons.lock, color: Colors.blue,)
    //             ),
    //           ),
    //           SizedBox(height: 8.0,),
    //           Container(
    //             padding: EdgeInsets.only(left: 150),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 TextButton(onPressed: null, child: Text("Remember Password?",style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 17,
    //                   fontWeight: FontWeight.w700,
    //                 ),)),
    //               ],
    //             ),
    //           ),
    //           SizedBox(height: 32.0,),
    //            Container(
    //              width: double.infinity,
    //               child: RawMaterialButton(
    //                fillColor: Colors.purple,
    //               //fillColor: Color(0xF3D5AF1),
    //                padding: EdgeInsets.symmetric(vertical: 15.0),
    //                shape: RoundedRectangleBorder(
    //                  borderRadius: BorderRadius.circular(12.0)
    //                ),
    //                onPressed: ()=>Payment(),
    //                child: Text("Log in",style: TextStyle(
    //                  color: Colors.white,
    //                  fontSize: 18.0,
    //                  fontWeight: FontWeight.bold
    //                ),),
    //                ),
   
    //            ),
    //            SizedBox(height: 45.0,),
    //            //Divider(indent: ln10, endIndent: ln10, color: Colors.white,),
    //            const Divider(
    //              height: 2,
    //              thickness: 2,
    //              indent: 0,
    //              endIndent: 15,
    //              color: Colors.white,
    //            ),
    //            // Container(
    //            //   child: Row(
    //             //     mainAxisAlignment: MainAxisAlignment.center,
    //            //     children: [
    //            //       const Divider(
    //            //        height: 3,
    //            //         thickness: 5,
    //            //         indent: 3,
    //            //         endIndent: 0,
    //            //         color: Colors.white,
    //            //       ),
    //            //       Text("OR"),
    //            //       Divider(
    //            //         height: 2,
    //            //         thickness: 2,
    //            //         indent: 0,
    //            //         endIndent: 5,
    //            //         color: Colors.white,
    //            //       )
    //            //     ],
    //            //   ),
    //            // ),

    //            SizedBox(height: 80,),

    //            Container(
    //              width: double.infinity,
    //              child: RawMaterialButton(
    //               fillColor: Colors.purple,
    //                padding: EdgeInsets.symmetric(vertical: 15.0),
    //                shape: RoundedRectangleBorder(
    //                  borderRadius: BorderRadius.circular(12.0)
    //                ),
    //                child: Text("Sign Up With Email",style: TextStyle(
    //                  color: Colors.white,
    //                  fontSize: 18.0,
    //                  fontWeight: FontWeight.bold
    //                ),),
    //                onPressed: () {},),
                  
    //            ),
    //          SizedBox(height: 5.0,),
    //           Container(
    //              width: double.infinity,
    //              child: RawMaterialButton(
    //                padding: EdgeInsets.symmetric(vertical: 15.0),
    //               shape: RoundedRectangleBorder(
    //                  borderRadius: BorderRadius.circular(12.0)
    //                ),
    //                child: Text("Sign Up With Google",style: TextStyle(
    //                  color: Colors.purple,
    //                  fontSize: 18.0,
    //                  fontWeight: FontWeight.bold
    //                ),),
    //                fillColor: Colors.white,
    //                onPressed: (){},),
    //            ),
    //            // SizedBox(height: 80.0,),
    //            Spacer(),
    //            Center(
    //              child: Text("Terms of Service and Pivacy Policy",style: TextStyle(
    //                  color: Colors.white,
    //                  fontSize: 18.0,
    //                  fontWeight: FontWeight.bold
    //                )),
    //            )

    //        ],
    //     ),
    //    ),
    //  );
