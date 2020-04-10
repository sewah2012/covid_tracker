import 'package:flutter/material.dart';
import 'package:covidtracker/pages/loading.dart';
import 'package:covidtracker/pages/country_list.dart';
import 'package:covidtracker/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/' ,
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/country_list': (context) => CountryList(),
  },
));

