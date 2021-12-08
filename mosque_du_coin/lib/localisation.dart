

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'main.dart';
import 'package:mosque_du_coin/add.dart';
import 'package:mosque_du_coin/calendrier.dart';
import 'package:mosque_du_coin/coran.dart';
import 'package:mosque_du_coin/home.dart';
import 'package:mosque_du_coin/parametres.dart';
import 'package:mosque_du_coin/salat_janaza.dart';
import 'package:mosque_du_coin/location2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Localisation extends StatefulWidget {
  const Localisation({Key? key}) : super(key: key);
  @override
  _LocationPageState createState() => _LocationPageState();
  
}


class _LocationPageState extends State<Localisation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [

    const location2(),
     CalendrierPage(),
     AddPage(),
     CoranPage(),
    const SalatJanazaPage(),
     ParametrePage(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index ;
    });
  }
 
  @override
  Widget build(BuildContext context) {
  
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*Container(
                      child: IconButton(
                        padding: const EdgeInsets.only(left: 0),
                        icon: const Icon(Icons.arrow_back),
                        onPressed: (){
                          
                        },
                      ),
                ),*/
                  Image.asset(
                 'images/logo.png',
                  fit: BoxFit.contain,
                  height: 32,
              ),
               Container(
                  child: const  Text('La Mosqué Du Coin',
                  textAlign: TextAlign.center,),
              ), 
              ],
        ),
       
     actions: <Widget>[
    IconButton(
      padding: const EdgeInsets.only(right: 20),
     icon: Image.asset(
       'icons/logo_logo.png' ,
       fit: BoxFit.cover,
      height: 200,
       color: Colors.brown,
      ),
      onPressed: () {
          _openPopup(context);
      },
    )
  ],
      ),
      body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ExempleBottomBar(),
    );
    
  }

  BottomNavigationBar ExempleBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendrier',
        ),
        BottomNavigationBarItem(
          icon: Icon( FontAwesomeIcons.mosque),
          label: 'Ajouter',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_stories),
          label: 'Coran',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.pray),
          label: 'Salat Janaza',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Parametres', 
        ),
      ],
      unselectedItemColor: Colors.grey[800],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.lightGreen[800],
      onTap: _onItemTapped,
    );
  }

   _openPopup(context) {
    Alert(
        context: context,
        content: Column(
          
          children:  <Widget>[
             Image.asset(
                 'icons/mosqué_icon.png',
                  fit: BoxFit.contain,
                  height: 300,
                  width: 300,
              ),

           const Text(
              'Aucune donation',
              style: TextStyle(
                fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.black,) 
            ),
            const SizedBox(height: 15,),
           const Text(
              'Vous n"avez pas encore fait un don, aucun probléme, notre application est entiérement gratuite  et sans publicité pour vous faciliter dans vos oeuvres inshaAllah.',
            style: TextStyle(fontSize: 15, color: Colors.grey),
            textAlign: TextAlign.center,
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child:const Text(
              "Faire un don",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.lightGreen[800],
          )
        ]).show();
   }
   void  close(){
          Navigator.pop(context);
   }
}