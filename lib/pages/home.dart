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
              image: AssetImage('assets/bgcapp.jpg'),
              fit: BoxFit.cover
            )
          ),

          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
            child: Column(
              children: <Widget>[
                RaisedButton.icon(onPressed: ()async{
                  dynamic results = await Navigator.pushNamed(context, '/country_list');
                  setState(() {
                    info = {
                      'address':results['address'],
                      'image': results['image'],
                      'country': results['country'],
                      'tConfirmed': results['tConfirmed'],
                      'tRecovered': results['tRecovered'],
                      'tDeaths': results['tDeaths'],
                      'lastUpdate':results['lastUpdate']
                    };
                  });

                },
                    icon: Icon(Icons.edit_location),
                    label: Text('Select Country',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey
                    ),)),

                SizedBox(height: 30,),

                Text(info['lastUpdate'],
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                  ),),
                Text('Last update'),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(info['country'],
                   style: TextStyle(
                     fontSize: 25,
                     letterSpacing: 2.0
                   ),),
                 ],
                ),
                SizedBox(height: 5,),
                Text('Country'),
                Divider(
                    height: 15.0,
                    color: Colors.blue[700]
                ),

                Text(info['tConfirmed'],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue
                ),),
                Text('Total Confirmed cases'),
                Divider(
                    height: 30.0,
                    color: Colors.blue[700]
                ),

                Text(info['tRecovered'],
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green
                  ),),
                Text('Total Recovered'),
                Divider(
                    height: 20.0,
                    color: Colors.blue[700]
                ),

                Text(info['tDeaths'],
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red
                  ),),
                Text('Total Death'),

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
