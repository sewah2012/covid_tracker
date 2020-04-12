import 'package:flutter/material.dart';
import 'package:covidtracker/ser/country_class.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:http/http.dart';
//import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setInfo()async{
    Country country = Country(image: 'ma.png',country: 'Morocco');
    await country.getInfo();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'image': country.image,
      'country': country.country,
      'tConfirmed': country.tConfirmed,
      'tRecovered': country.tRecovered,
      'tDeaths': country.tDeath,
      'lastUpdate':country.lastUpdate,
    });
  }
  @override
  void initState(){
    super.initState();
    setInfo();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
