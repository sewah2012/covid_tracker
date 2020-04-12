import 'package:http/http.dart';
import 'dart:convert';

class Country{
  String image, country, lastUpdate;
  String tConfirmed, tRecovered, tDeath;

  Country({this.image,this.country});

  Future <void> getInfo()async{
    try {
      Response response = await get(
          'https://covid19.mathdro.id/api/countries/$country');
      Map info = jsonDecode(response.body);
      tConfirmed = info['confirmed']['value'].toString();
      tRecovered = info['recovered']['value'].toString();
      tDeath = info['deaths']['value'].toString();
      lastUpdate = info['lastUpdate'].toString().substring(0,10);
    }catch(e){
      print('Data too too long! : $e');
      country = 'Problem retriving Data';
    }


  }


}