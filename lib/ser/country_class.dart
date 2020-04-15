import 'package:http/http.dart';
import 'dart:convert';

class Country{
  String image, country, lastUpdate;//= new DateTime.now().toString();
  String tConfirmed, tRecovered, tDeath;



  Country({this.image,this.country});

  Future <void> getInfo()async{
    try {
      Response response = await get(
      // 'https://covid19.mathdro.id/api/countries/$country''https://api.covid19api.com/live/country/China/status/confirmed'
          'https://api.covid19api.com/total/country/$country'
      );

      List info = jsonDecode(response.body);
      int ind = info.length-1;
      tConfirmed = info.elementAt(ind)['Confirmed'].toString();
      tRecovered = info.elementAt(ind)['Recovered'].toString();
      tDeath = info.elementAt(ind)['Deaths'].toString();
      lastUpdate = info.elementAt(ind)['Date'].toString().substring(0,10);
    }catch(e){
      print('Data too too long! : $e');
      country = 'Problem retriving Data';
    }


  }


}