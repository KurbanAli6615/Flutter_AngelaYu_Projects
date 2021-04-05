import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    http.Response response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=e734a23f0266dc3ba787c52670431563');
    print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      double temprature = jsonDecode(data)['main']['temp'];
      int condition = jsonDecode(data)['weather'][0]['id'];
      String cityName = jsonDecode(data)['name'];

      print("Temprature : ${temprature}");
      print("Condition : ${condition}");
      print("cityName : ${cityName}");
    } else {
      print("Error in api response ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
