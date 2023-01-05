import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/model/service_list.dart';

import '../constants/style_constant.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  final List<Serv_list> serv_card = Serv_list.getServ();

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services", style: kprofiletitle,),
        centerTitle: false,
        elevation: 0,
        backgroundColor: ProfileBackground,
      ),
      backgroundColor: BackgroundColor2,
      body: ListView.builder(
       itemCount: serv_card.length,
        itemBuilder: (context, index) { 
            return Stack(
              children: [
                serv_cont(serv_card[index],context)
              ],
            );
         },
      ),

      //buttom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_quote),
            label: 'Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service_rounded),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: PrimaryBrand,
        onTap: _onItemTapped,
      ),
    );
  }
  
  serv_cont(Serv_list serv_card, BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 110,
        child: Card(
          color: BackgroundColor2,
          child: Padding(
            padding: const EdgeInsets.only(left: 23, top: 25, right: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(serv_card.title, style: KservCardtitle,),),
                      Text("\$${serv_card.price}", style: KservCartsmalTitle,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text(serv_card.subtitle, style: KservSubTitle,)),
                      Text(serv_card.completed, style: KservSubTitleSmal,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}