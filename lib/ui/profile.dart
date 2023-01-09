import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/ui/service.dart';
import 'package:kngroo/ui/simpleMap.dart';

import '../constants/style_constant.dart';
import '../model/bottomNavigationBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}



// class MenuItem{
//   final IconData iconData;
//   final String text;

//   MenuItem(this.iconData, this.text);
// }

class _ProfilePageState extends State<ProfilePage> {
  // final menuItemlist = [
  //   MenuItem(Icons.person_add, "Profile"),
  //    MenuItem(Icons.dashboard_rounded, "Request"),
  //     MenuItem(Icons.home_repair_service_rounded, "Service"),
  // ];
  // int index = 0;
  // final _buildBody = const <Widget>[ProfilePage(), Service(),SimpleMap()];
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.33,
        leadingWidth: 0,
        backgroundColor: ProfileBackground,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 14),
          child: Text("Profile", style: kprofiletitle,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
            child: Text("Edit", style: kprofileButNavBarHov,),
          )
        ],
      ),
      backgroundColor: BackgroundColor2,
      body: Container(
        child: Column(
          children: [
            //first profile section
            Container(
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 25, top: 21),
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/profil_pc.png"))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Text("First Last", style: kprofileSecTitle,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0, top: 7),
                            child: Text("email@gmail.com", style: kprofileEmail,),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            //second profile section
            Container(
              margin: EdgeInsets.only(top: 14),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 31.0, right: 12),
                        child: Icon(Icons.maps_ugc_outlined, size: 21, ),
                      ),
                      Text("1234 Address Ln.", style: kprofileEmail,)
                    ],
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(left: 27, right: 27, top: 14),
                    height: 173,
                    width: 376,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/map.png"),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  
                  //inside the secode part
                    Container(
                      height: 53,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 29, right: 25, top: 30),
                      decoration: BoxDecoration(
                        color: PrimaryBrand,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Payment", style: kprofileButtom,),
                              Text("****1234", style: kprofileButtom,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    //inside the secode part
                    Container(
                      height: 53,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 29, right: 25, top: 30),
                      decoration: BoxDecoration(
                        color: PrimaryBrand,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Support", style: kprofileButtom,),
                              Icon(Icons.maps_ugc_outlined, size: 25, color: BackgroundColor2 ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //inside the secode part
                    Container(
                      height: 53,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 29, right: 25, top: 30),
                      decoration: BoxDecoration(
                        color: SecondaryBrand,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Service()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Logout", style: kprofileButtom,),
                              Icon(Icons.arrow_forward, size: 25, color: BackgroundColor2,)
                            ],
                          ),
                        ),
                      ),
                    ),
                ]

              ),
            )
          ],
        ),
      ),
       
      //buttom Navigation Bar
         
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.shifting,
        //   currentIndex: index,
        //   onTap: (x) {
        //     setState(() {
        //       index = x;
        //     });
        //   },
        //   elevation: 16,
        //   // showUnselectedLabels: Colors.black,
        //   // showSelectedLabels: PrimaryBrand,
          
        //   items: menuItemlist
        //     .map((MenuItem menuItem) => BottomNavigationBarItem(
        //       icon: Icon(menuItem.iconData),
        //       label: menuItem.text
        //       )).toList(),
        //       ),
    );
  }
  
}