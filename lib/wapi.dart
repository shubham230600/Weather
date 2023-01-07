import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'mod.dart';
class wapi
{
  // get http => null;

  Future<weather>? getCurrentWeather(String? location) async{
    var end=Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=db320a3fbfb596bd6c281a080a12d6d4&units=metric");
  var res=await http.get(end);
  var body = jsonDecode(res.body);
  print(weather.fromJson(body).city);
  return weather.fromJson(body);
  }
}