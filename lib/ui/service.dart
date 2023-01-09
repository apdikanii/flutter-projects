import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kngroo/constants/color_constant.dart';
import 'package:kngroo/model/service_list.dart';
import 'package:kngroo/ui/simpleMap.dart';

import '../constants/style_constant.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  final List<Serv_list> serv_card = Serv_list.getServ();

   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        elevation: 0.33,
        title: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Text("Services", style: kprofiletitle,),
        ),
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