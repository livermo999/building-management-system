import 'package:building_management_system/home/food_page_body.dart';
import 'package:building_management_system/widgets/big_text.dart';
import 'package:building_management_system/widgets/small_text.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
        margin: EdgeInsets.only(top: 20,bottom: 20),
        padding: const EdgeInsets.only(right: 10,left: 10),
      child: Container(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [

            Column(
          children: [
            BigText(text: 'Bangeladesh',color: Color(0xFF89dad0),),
            Row(
              children: [
                SmallText(text: 'Narsindgi',color: Colors.black54,),
                Icon(Icons.arrow_drop_down_rounded)
              ],
            )
          ],
        ),
        Center(
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color((0xFF89dad0),)),
            child: Icon(Icons.search,color: Colors.white),
          ),
        )
          ],
        )
         
      ),
      
    ),
          FoodPageBody(),
        ],
      ));
  }
}