
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
    return Scaffold(body: LoginScreen(),);
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //SimpleMap()
        // BackgroundImage(),
         Payment(),
        //LoginScreenpage(),
      ],
      
    );
  }
  
//   LogingScreenCont() {
//     return Container(
//       margin: EdgeInsets.only(top: 20.0),
      
//       child: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(image: AssetImage("images/kangrooicon.png"),
//                 fit: BoxFit.cover)
//               ),
//             ),
//             //IconButton(onPressed: null, icon: Image.asset("images/kangrooicon.png")),
              
//               SizedBox(height: 167.0,),
//                   const Text(
//                     'Clean Kangroo',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 26.0,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//               SizedBox(height: 44.0,),
//              const TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   fillColor: Colors.white,
//                   hintText: 'Email', hintStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.mail, color: Colors.blue),
//                   contentPadding: EdgeInsets.all(8.0),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       width: 3, color: Colors.white, 
//                     ),
//                   )
//                 ),
//               ),
//               SizedBox(height: 26.0,),
//              const TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         width: 3, color: Colors.white), //<-- SEE HERE
//                   ),
//                   hintText: "Password", hintStyle: TextStyle(color: Colors.white),
//                   prefixIcon: Icon(Icons.lock, color: Colors.blue,)
//                 ),
//               ),
//               SizedBox(height: 8.0,),
//               Container(
//                 padding: EdgeInsets.only(left: 150),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(onPressed: null, child: Text("Remember Password?",style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 17,
//                       fontWeight: FontWeight.w700,
//                     ),)),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 32.0,),
//               Container(
//                 width: double.infinity,
//                 child: RawMaterialButton(
//                   fillColor: Colors.purple,
//                  //fillColor: Color(0xF3D5AF1),
//                   padding: EdgeInsets.symmetric(vertical: 15.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0)
//                   ),
//                   onPressed: (){},
//                   child: Text("Log in",style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold
//                   ),),
//                   ),
   
//               ),
//               SizedBox(height: 45.0,),
//               Divider(indent: ln10, endIndent: ln10, color: Colors.white,),

//               SizedBox(height: 80,),

//               Container(
//                 width: double.infinity,
//                 child: RawMaterialButton(
//                   fillColor: Colors.purple,
//                   padding: EdgeInsets.symmetric(vertical: 15.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0)
//                   ),
//                   child: Text("Sign Up With Email",style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold
//                   ),),
//                   onPressed: () {},),
                  
//               ),
//               SizedBox(height: 5.0,),
//               Container(
//                 width: double.infinity,
//                 child: RawMaterialButton(
//                   padding: EdgeInsets.symmetric(vertical: 15.0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0)
//                   ),
//                   child: Text("Sign Up With Google",style: TextStyle(
//                     color: Colors.purple,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold
//                   ),),
//                   fillColor: Colors.white,
//                   onPressed: (){},),
//               ),
//               SizedBox(height: 50.0,),
//               Center(
//                 child: Text("Terms of Service and Pivacy Policy",style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold
//                   )),
//               )

//           ],
//         ),
//       ),
//     );
//  }
}