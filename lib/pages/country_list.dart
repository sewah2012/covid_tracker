import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:covidtracker/ser/country_class.dart';
import 'package:http/http.dart';

class CountryList extends StatefulWidget {
  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {

  List <Country> countries = [
    Country(image: 'lr.png',country: 'Liberia'),
    Country(image: 'ma.png',country: 'Morocco'),
    Country(image: 'gh.png',country: 'Ghana'),
    Country(image: 'it.png',country: 'Italy'),
    Country(image: 'es.png',country: 'Spain'),
    Country(image: 'ae.png',country: 'United Arab Emirates'),
    Country(image: 'af.png',country: 'Afghanistan'),
    Country(image: 'ag.png',country: 'Antigua and Barbuda'),
    Country(image: 'ai.png',country: 'Anguilla'),
    Country(image: 'bd.png',country: 'Bangladesh'),
    Country(image: 'am.png',country: 'Armenia'),
    Country(image: 'an.png',country: 'Angola'),
    Country(image: 'at.png',country: 'Austria'),
    Country(image: 'au.png',country: 'Australia'),
    Country(image: 'az.png',country: 'Azerbaijan'),
    Country(image: 'ba.png',country: 'Bosnia and Herzegovina'),
    Country(image: 'be.png',country: 'Belgium'),
    Country(image: 'bf.png',country: 'Burkina Faso'),
    Country(image: 'bg.png',country: 'Bulgaria'),
    Country(image: 'bh.png',country: 'Bahrain'),
    Country(image: 'bi.png',country: 'Burundi'),
    Country(image: 'bj.png',country: 'Benin'),
    Country(image: 'bm.png',country: 'Bermuda'),
    Country(image: 'bn.png',country: 'Brunei Darussalam'),
    Country(image: 'bo.png',country: 'Bolivia'),
    Country(image: 'br.png',country: 'Brazil'),
    Country(image: 'bs.png',country: 'Bahamas'),
    Country(image: 'bt.png',country: 'Bhutan'),
    Country(image: 'bv.png',country: 'Bouvet Island'),
    Country(image: 'bw.png',country: 'Botswana'),
    Country(image: 'by.png',country: 'Belarus'),
    Country(image: 'bz.png',country: 'Belize'),
    Country(image: 'ca.png',country: 'Canada'),
    Country(image: 'cf.png',country: 'Central African Republic'),
    Country(image: 'td.png',country: 'Chad'),
    Country(image: 'ci.png',country: "C\u00f4te d'Ivoire"),
    Country(image: 'cl.png',country: 'Chile'),
    Country(image: 'cm.png',country: 'Cameroon'),
    Country(image: 'cn.png',country: 'china'),
    Country(image: 'cl.png',country: 'Chile'),
    Country(image: 'co.png',country: 'Colombia'),
    Country(image: 'cbr.png',country: 'Congo (Brazzaville)'),
    Country(image: 'cd.png',country: 'Congo (Kinshasa)'),
    Country(image: 'cr.png',country: 'Costa Rica'),
    Country(image: 'hr.png',country: 'Croatia'),
    Country(image: 'cu.png',country: 'Cuba'),
    Country(image: 'cz.png',country: 'Cyprus'),
    Country(image: 'dk.png',country: 'Denmark'),
    Country(image: 'dj.png',country: 'Djibouti'),
    Country(image: 'do.png',country: 'Dominican Republic'),
    Country(image: 'ec.png',country: 'Ecuador'),
    Country(image: 'eg.png',country: 'Egypt'),
    Country(image: 'sv.png',country: "El Salvador"),
    Country(image: 'gq.png',country: 'Equatorial Guinea'),
    Country(image: 'er.png',country: 'Eritrea'),
    Country(image: 'ee.png',country: 'Estonia'),
    Country(image: 'et.png',country: 'Ethiopia'),
    Country(image: 'fj.png',country: 'Fiji'),
    Country(image: 'fi.png',country: 'Finland'),
    Country(image: 'fr.png',country: 'France'),
    Country(image: 'ga.png',country: 'Gabon'),
    Country(image: 'gm.png',country: 'Gambia'),
    Country(image: 'ge.png',country: 'Georgia'),
    Country(image: 'de.png',country: 'Germany'),
    Country(image: 'gh.png',country: 'Ghana'),
    Country(image: 'gr.png',country: 'Greece'),
    Country(image: 'gd.png',country: 'Grenada'),
    Country(image: 'gt.png',country: 'Guatemala'),
    Country(image: 'gn.png',country: 'Guinea'),
    Country(image: 'gw.png',country: "Guinea-Bissau"),
    Country(image: 'gy.png',country: 'Guyana'),
    Country(image: 'ht.png',country: 'Haiti'),
    Country(image: 'hn.png',country: 'Honduras'),
    Country(image: 'hu.png',country: 'Hungary'),
    Country(image: 'is.png',country: 'Iceland'),
    Country(image: 'in.png',country: 'India'),
    Country(image: 'id.png',country: 'Indonesia'),
    Country(image: 'ir.png',country: 'Iran'),
    Country(image: 'iq.png',country: 'Iraq'),
    Country(image: 'ie.png',country: 'Ireland'),
    Country(image: 'il.png',country: 'Israel'),
    Country(image: 'it.png',country: 'Italy'),
    Country(image: 'jm.png',country: 'Jamaica'),
    Country(image: 'jp.png',country: 'Japan'),
    Country(image: 'jo.png',country: 'Jordan'),
    Country(image: 'kz.png',country: 'Kazakhstan'),
    Country(image: 'ke.png',country: "Kenya"),
    Country(image: 'kr.png',country: 'Korea, South'),
    Country(image: 'xk.png',country: 'Kosovo'),
    Country(image: 'kw.png',country: 'kuwait'),
    Country(image: 'kg.png',country: 'Kyrgyzstan'),
    Country(image: 'la.png',country: 'Laos'),
    Country(image: 'lv.png',country: 'Latvia'),
    Country(image: 'lb.png',country: 'Lebanon'),
    Country(image: 'ly.png',country: 'Libya'),
    Country(image: 'li.png',country: 'Liechtenstein'),
    Country(image: 'lt.png',country: 'Lithuania'),
    Country(image: 'lu.png',country: 'Luxembourg'),
    Country(image: 'mg.png',country: 'Madagascar'),
    Country(image: 'mw.png',country: 'Malawi'),
    Country(image: 'my.png',country: 'Malaysia'),
    Country(image: 'mv.png',country: 'Maldives'),
    Country(image: 'ml.png',country: 'Mali'),
    Country(image: 'mt.png',country: "Malta"),
    Country(image: 'mu.png',country: 'Mauritius'),
    Country(image: 'mx.png',country: 'Mexico'),
    Country(image: 'md.png',country: 'moldova'),
    Country(image: 'mc.png',country: 'Monaco'),
    Country(image: 'mn.png',country: 'Mongolia'),
    Country(image: 'me.png',country: 'Montenegro'),
    Country(image: 'mz.png',country: 'Mozambique'),
    Country(image: 'na.png',country: 'Namibia'),
    Country(image: 'np.png',country: 'Nepal'),
    Country(image: 'nl.png',country: 'Netherlands'),
    Country(image: 'nz.png',country: 'New Zealand'),
    Country(image: 'ni.png',country: 'Nicaragua'),
    Country(image: 'ne.png',country: 'Niger'),
    Country(image: 'ng.png',country: 'Nigeria'),
    Country(image: 'no.png',country: 'Norway'),
    Country(image: 'om.png',country: 'Oman'),
    Country(image: 'pk.png',country: "Pakistan"),
    Country(image: 'pa.png',country: 'Panama'),
    Country(image: 'pg.png',country: 'Papua New Guinea'),
    Country(image: 'py.png',country: 'Paraguay'),
    Country(image: 'pe.png',country: 'Peru'),
    Country(image: 'ph.png',country: 'Philippines'),
    Country(image: 'pl.png',country: 'Poland'),
    Country(image: 'pt.png',country: 'Portugal'),
    Country(image: 'qa.png',country: 'Qatar'),
    Country(image: 'ro.png',country: 'Romania'),
    Country(image: 'ru.png',country: 'Russia'),
    Country(image: 'rw.png',country: 'Rwanda'),
    Country(image: 'kn.png',country: 'Saint Kitts and Nevis'),
    Country(image: 'lc.png',country: 'Saint Lucia'),
    Country(image: 'vc.png',country: 'Saint Vincent and the Grenadines'),
    Country(image: 'mv.png',country: 'San Marino'),
    Country(image: 'st.png',country: 'Sao Tome and Principe'),
    Country(image: 'sa.png',country: "Saudia Arabia"),
    Country(image: 'sn.png',country: 'Senegal'),
    Country(image: 'rs.png',country: 'Serbia'),
    Country(image: 'sl.png',country: 'Sierra Leone'),
    Country(image: 'sg.png',country: 'Monaco'),
    Country(image: 'mn.png',country: 'Singapore'),
    Country(image: 'sk.png',country: 'Slovakia'),
    Country(image: 'sk.png',country: 'Slovenia'),
    Country(image: 'so.png',country: 'Somalia'),
    Country(image: 'za.png',country: 'South Africa'),
    Country(image: 'ss.png',country: 'South Sudan'),
    Country(image: 'es.png',country: 'Spain'),
    Country(image: 'lk.png',country: 'Sri Lanka'),
    Country(image: 'sd.png',country: 'Sudan'),
    Country(image: 'sr.png',country: 'Suriname'),
    Country(image: 'se.png',country: 'Sweden'),
    Country(image: 'ch.png',country: 'Switzerland'),
    Country(image: 'sy.png',country: "Syria"),
    Country(image: 'tw.png',country: 'Taiwan'),
    Country(image: 'tz.png',country: 'Tanzania'),
    Country(image: 'th.png',country: 'Thailand'),
    Country(image: 'tg.png',country: 'Togo'),
    Country(image: 'tt.png',country: 'Trinidad and Tobago'),
    Country(image: 'tr.png',country: 'Turkey'),
    Country(image: 'us.png',country: 'USA'),
    Country(image: 'ug.png',country: 'Uganda'),
    Country(image: 'ua.png',country: 'Ukraine'),
    Country(image: 'ae.png',country: 'United Arab Emirates'),
    Country(image: 'gb.png',country: 'United Kingdom'),
    Country(image: 'uy.png',country: 'Uruguay'),
    Country(image: 'uz.png',country: 'Uzbekistan'),
    Country(image: 've.png',country: 'Venezuela'),
    Country(image: 'vn.png',country: 'Vietnam'),
    Country(image: 'eh.png',country: 'Western Sahara'),
    Country(image: 'ye.png',country: "Yemen"),
    Country(image: 'zm.png',country: 'Zambia'),
    Country(image: 'zw.png',country: 'Zimbabwe'),

  ];


  void updateInfo(index)async{
    Country ctr = countries[index];
    await ctr.getInfo();
    Navigator.pop(context,{
      'image': ctr.image,
      'country': ctr.country,
      'tConfirmed': ctr.tConfirmed,
      'tRecovered': ctr.tRecovered,
      'tDeaths': ctr.tDeath,
      'lastUpdate':ctr.lastUpdate
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a Country'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4),
                child: Card(
                  child: ListTile(
                    onTap: (){
                      updateInfo(index);
                    },
                    title: Text(countries[index].country),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${countries[index].image}'),
                    ),
                  ),
                ),
              );
            }
          )
      );
  }
}
