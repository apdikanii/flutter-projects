import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/constants/style_constant.dart';
import 'package:kngroo/ui/profile.dart';
import 'package:kngroo/ui/request.dart';
import 'package:kngroo/ui/service.dart';

class Bottnavbar extends StatefulWidget {
  const Bottnavbar({super.key});

  @override
  State<Bottnavbar> createState() => _BottnavbarState();
}

class _BottnavbarState extends State<Bottnavbar> {
  int index = 1;
final screens = [
  ProfilePage(),
  Request(),
  Service(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
      
      //bottomNavBar
        bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: PrimaryBrand,
          //labelTextStyle: KservCartsmalTitle,
        ),
         child: NavigationBar(
          height: 100,
          backgroundColor: ProfileBackground,
          selectedIndex: index,
          onDestinationSelected: (index) => 
          {
            setState(() => this.index = index),
          },
        destinations: [
         NavigationDestination(
          icon: Icon(Icons.person),
            label: "Profile"),
          NavigationDestination(
           icon: Icon(Icons.request_quote),
             label: 'Request',),
          NavigationDestination(
           icon: Icon(Icons.home_repair_service_rounded),
            label: 'Services',),
          ],),
          ),
    );
  }
}