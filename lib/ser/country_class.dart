import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Country{

  //per country data
  String image, country, nConfirmed,nRecovered,nDeath;
  String tConfirmed, tRecovered, tDeath;

  //global data
  String ngConfirmed,ngRecovered, ngDeath,tgConfirmed,tgRecovered,tgDeath;

  //date
  String lastUpdate;

  Country({this.image,this.country});

  Future <void> getInfo()async{
    try {
      Response response = await get(
      // 'https://covid19.mathdro.id/api/countries/$country''https://api.covid19api.com/live/country/China/status/confirmed'
         // 'https://api.covid19api.com/total/country/$country'
          'https://api.covid19api.com/summary'
      );

     // print(response.body);
      var info = jsonDecode(response.body);
      //initializing global data variables
      ngConfirmed = info['Global']['NewConfirmed'].toString();
      ngRecovered = info['Global']['NewRecovered'].toString();
      ngDeath = info['Global']['NewDeaths'].toString();
      tgConfirmed = info['Global']['TotalConfirmed'].toString();
      tgRecovered = info['Global']['TotalRecovered'].toString();
      tgDeath = info['Global']['TotalDeaths'].toString();

      //country level data

      for(int i = 0; i < info['Countries'].length; i++){
          if(info['Countries'].elementAt(i)['Country']==country){
              tConfirmed= info['Countries'].elementAt(i)['TotalConfirmed'].toString();
              tRecovered = info['Countries'].elementAt(i)['TotalRecovered'].toString();
              tDeath = info['Countries'].elementAt(i)['TotalDeaths'].toString();
              ngRecovered = info['Countries'].elementAt(i)['TotalConfirmed'].toString();
              nDeath = info['Countries'].elementAt(i)['NewDeaths'].toString();
              nConfirmed = info['Countries'].elementAt(i)['NewConfirmed'].toString();
              nRecovered = info['Countries'].elementAt(i)['NewRecovered'].toString();
              lastUpdate = info['Countries'].elementAt(i)['Date'].toString().substring(0,10);

              DateTime date = DateTime.parse(info['Countries'].elementAt(i)['Date']);
              lastUpdate = DateFormat.yMMMEd().format(date);


         }
      }


//      print(lastUpdate);
//      int ind = info.length-1;
//      tConfirmed = info.elementAt(ind)['Confirmed'].toString();
//      tRecovered = info.elementAt(ind)['Recovered'].toString();
//      tDeath = info.elementAt(ind)['Deaths'].toString();
//      lastUpdate = info.elementAt(ind)['Date'].toString().substring(0,10);

//      DateTime date = ;
//      lastUpdate = DateFormat.yMMMd().format(date).toString();

    }catch(e){
      print('Data too too long! : $e');
      country = 'Problem retriving Data';
    }


  }


}