import 'package:flutter/material.dart';

class weather
{
String? city;
double? wind;
double? temp;
int? hum;
double? feels;
int?
 pres;
 weather({
  this.city,
  this.wind,this.feels,this.hum,this.pres,this.temp
 });
 weather.fromJson(Map<String,dynamic> json){
  city=json["name"];
  temp=json["main"]["temp"];
  wind= json["wind"]["speed"];
  pres=json["main"]["pres"];
  hum=json["main"]["hum"];
  feels=json["main"]["feels"];
 }
}