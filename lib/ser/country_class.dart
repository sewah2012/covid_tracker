import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Country{

  //per country data
  String image, country;
  String tConfirmed, tRecovered, tDeath;

//  //global data
//  String ngConfirmed,ngRecovered, ngDeaths,tgConfirmed,tgRecovered,tglDeath;

  //date
  String lastUpdate;

  Country({this.image,this.country});

  Future <void> getInfo()async{
    try {
      Response response = await get(
       'https://covid19.mathdro.id/api/countries/$country'
//          'https://api.covid19api.com/total/country/$country'
//          'https://api.covid19api.com/summary'
      );
      print(response.body);
      Map info = jsonDecode(response.body);
      //initializing global data variables
        tConfirmed = info['confirmed']['value'].toString();
        tRecovered = info['recovered']['value'].toString();
        tDeath = info['deaths']['value'].toString();
        lastUpdate = info['lastUpdate'].toString().substring(0,10);

//      print(tConfirmed);
//////      print(lastUpdate);

//

    }catch(e){
      print('Data too too long! : $e');
      country = 'Problem retriving Data';
    }


  }


}