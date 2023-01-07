// import 'package:flutter/cupertino.dart';
import 'new.dart';
import 'package:flutter/material.dart';
 TextStyle titleFont = const TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0);
 TextStyle infoFont = const TextStyle(fontWeight: FontWeight.w600,fontSize: 18.0);
 
Widget addn1(
  String wind,String hum,String press,String feel)
{
return Container(
  width:double.infinity,
  padding:EdgeInsets.all(18.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Wind",
          
          style: TextStyle(fontWeight:FontWeight.w600 ,
          fontSize: 18.0,)),
          SizedBox(height:18.0 ,),
          Text("Pressure",
          style: titleFont,)
        ],
        ),
        Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$wind",
          
          style: infoFont),
          SizedBox(height:18.0 ,),
          Text("$press",
          style: infoFont,)
        ],
        ),
        Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Humidity",
          
          style: TextStyle(fontWeight:FontWeight.w600 ,
          fontSize: 18.0,)),
          SizedBox(height:18.0 ,),
          Text("Feels Like",
          style: titleFont,)
        ],
        ),
         Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$hum",
          
          style: infoFont),
          SizedBox(height:18.0 ,),
          Text("$feel",
          style: infoFont,)
        ],
        )
      ],
    ),
    ]
  ),
);
}