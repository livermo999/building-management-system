import 'package:building_management_system/widgets/big_text.dart';
import 'package:building_management_system/widgets/icon_text_widget.dart';
import 'package:building_management_system/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}
class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController=PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;

  @override
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 320,
      child: PageView.builder(
        controller: pageController
        ,itemCount: 5,
        itemBuilder: (context,position){
        return _buildPageItem(position);
      }),
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
      height: 220,
      margin: EdgeInsets.only(right: 10,left: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:index.isEven? Color(0xFF69c5df):Color(0xFF9294cc),
      image: DecorationImage(
        fit: BoxFit.cover
        ,image: 
      AssetImage('assets/food1.webp'))),
      
    ),
    
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 140,
        margin: EdgeInsets.only(right: 30,left: 30,bottom: 15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.white),
        child: Container(
          padding: EdgeInsets.only(top: 15,right: 15,left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: 'Chinese Side'),
              SizedBox(height: 10,),
              Row(
                children: [
                  Wrap(
                    children:
                      List.generate(5,(index)=>Icon(Icons.star,color: Color(0xFF89dad0),size: 15,))
                    ,
                  ),
                  SizedBox(width: 7,),
                  SmallText(text: '4.5'),
                  SizedBox(width: 10,),
                  SmallText(text: '1234'),
                  SizedBox(width: 10,),
                  SmallText(text: 'Comments'),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextWidget(icon: Icons.circle_sharp, text: 'normal', iconColor: Colors.amber),
                  IconTextWidget(icon: Icons.location_on, text: '1.7km', iconColor: Color(0xFF89dad0)),
                  IconTextWidget(icon: Icons.access_time_rounded, text: '32min', iconColor: Colors.redAccent)
                ],
              )
            ],
          ),
        ),
      ),
    ),
    
      ],
    );
  }
}