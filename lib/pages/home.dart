import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map info = {};
  @override
  Widget build(BuildContext context) {
     info = info.isNotEmpty ? info : ModalRoute.of(context).settings.arguments;
//    print(info['tConfirmed']);

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ngm.jpg'),
              fit: BoxFit.cover
            )
          ),

          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              children: <Widget>[
                RaisedButton.icon(onPressed: ()async{
                  dynamic results = await Navigator.pushNamed(context, '/country_list');
                  setState(() {
                    info = {
//                      'ngConfirmed':results['ngConfirmed'],
//                      'ngRecovered':results['ngRecovered'],
//                      'ngDeath':results['ngDeath'],
//                      'tgConfirmed':results['tgConfirmed'],
//                      'tgRecovered':results['tgRecovered'],
//                      'tgDeath':results['tgDeath'],

                      'nConfirmed': results['nConfirmed'],
                      'nRecovered': results['nRecovered'],
                      'nDeath': results['nDeath'],

                      'image': results['image'],

                      'country': results['country'],

                      'tConfirmed': results['tConfirmed'],
                      'tRecovered': results['tRecovered'],
                      'tDeath': results['tDeath'],

                      'lastUpdate':results['lastUpdate'],




                    };
                  });

                },
                    icon: Icon(Icons.edit_location),
                    label: Text('Select Country',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey
                    ),)
                ),

                SizedBox(height: 30,),

                Text(info['lastUpdate'],
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                  ),),
                Text('Last update',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontSize: 20
                )),

                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(info['country'],
                   style: TextStyle(
                     fontSize: 30,
                     letterSpacing: 2.0,
                     fontWeight: FontWeight.bold,
                   ),),
                 ],
                ),
                SizedBox(height: 5,),
                Text('Country'),
                Divider(
                    height: 15.0,
                    color: Colors.blue[700]
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                          children: <Widget>[
                            Text(info['tConfirmed'],
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.blue,
                            ),),
                            Text('Total Confirmed',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.red[900],
                                fontWeight: FontWeight.bold,
                              ),),
                          ],),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(info['tRecovered'],
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.green
                                ),),
                              Text('Total Recovered',
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                            color: Colors.white,
                          ),

                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(info['tDeath'],
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.red,
                                ),),
                              Text('Total Death',
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],),
                        ),

                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(info['nConfirmed'],
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.blue,
                                ),),
                              Text('New Confirmed',
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(info['nRecovered'],
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.green
                                ),),
                              Text('New Recovered',
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 1.5),
                            color: Colors.white,
                          ),

                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Column(
                            children: <Widget>[
                              Text(info['nDeath'],
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.orange,
                                ),),
                              Text('New Deaths',
                                style: TextStyle(
                                  letterSpacing: 2.0,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],),
                        ),

                      ],
                    ),
                  ],
                ),
                Divider(
                    height: 20.0,
                    color: Colors.blue[700]
                ),

                Text('Developed by: ',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red
                  ),),
                Text('Emmanuel S. Sewah', style:
                  TextStyle(
                    fontSize: 15,
                    letterSpacing: 2.0,
                    color: Colors.indigo
                  ),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
