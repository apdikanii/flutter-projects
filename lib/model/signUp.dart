import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/constants/globalBottom.dart';
import 'package:kngroo/constants/style_constant.dart';
import 'package:kngroo/ui/payment.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _currIndex = 0;

    final login = TextEditingController();
    final signupG = TextEditingController();
    final popup = TextEditingController();

  showAlert() {
    showDialog(context: context,
     builder: (BuildContext context,) {
      BorderRadius.circular(18);
      return AlertDialog(
        content: Padding(
          padding: const EdgeInsets.only(top: 55, bottom: 25),
          child: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Image(image: AssetImage("images/pops.png"), height: 75, width: 75, ),
                Flexible(child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0, top: 19),
                  child: Text("1. Browse", textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.w500, color: PrimaryBrand
                  ),),
                )),
                //Title(color: Colors.black, child: Text("1. Browse")),
                Text('Choose your preferred local laundry store from dozens of options nearby. View ratings and pricing per item for each store.',
                 textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w400, color: SeconderyText
                 ),),
              ],
            ),
          ),
        ),
         actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 42),
            child: MyButtom(controller: popup, text: "Next"),
          )
  
          ],
      );
     }
     );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        height: MediaQuery.of(context).size.height,
       decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("images/backgroundimage.png"),
        fit: BoxFit.cover)
       ),
        child: Column(
        children: [
         // const BackgroundImage(),
          Container(
            margin: const EdgeInsets.only(top: 75, left: 157),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/kangrooicon.png"),
                 Padding(
                   padding: const EdgeInsets.only(left: 42.0),
                   child: ElevatedButton(
                    onPressed: (() => showAlert()), child: const Icon(Icons.question_mark,),  ),
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
                // TextFiel login
                const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                       fillColor: Colors.white,
                       filled: true,
                        hintText: 'Full Name', hintStyle: TextStyle(
                          color: hinttexts, fontSize: 17, fontWeight: FontWeight.w400),
                        prefixIcon: Icon(Icons.person, color: PrimaryBrand),
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
                //textfield Password
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
                  padding: const EdgeInsets.only(left: 220, right: 38, top: 18, bottom: 36),
                  child: Text("Have already an account? Sign in",style: KsignUptext,),
                ),
                //login Buttom
                Container(
                  child: Column(
                    children: [
                      MyButtom(
                        controller: login,
                        text: "Sign Up",
                      ),
                    ],
                  )
                ),
              const Spacer(),
              // bottom text
              const SizedBox(height: 227,),
                 Padding(
                   padding: const EdgeInsets.only(left: 77, right: 77, bottom: 35,),
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