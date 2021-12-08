import 'package:flutter/material.dart';
import 'package:mosque_du_coin/localisation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/mosque.png'), 
           fit: BoxFit.cover,
            ),
        ),
        child: Column(
        children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                      child: Column(
                        children: [
                        const  Text('Trouvez un lieu de de priére', 
                          style: TextStyle(color: Colors.black, fontSize: 20), 
                          ),
                          Text('autour de vous', 
                          style: TextStyle(color: Colors.lightGreen[800], fontSize: 20, fontWeight: FontWeight.bold), 
                          ),
                        ], 
            ),
        ),


                              Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Container(
                      //height: 50,
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            children: [
                              Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Adresse,ville,code postal,...',
                        fillColor: Colors.white, 
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: 
                          BorderRadius.circular(15),
                          ),
                      ),
                      ), 
                              ),
                      IconButton(
                        onPressed: (){},
                        icon:const  Icon(Icons.tune),
                        color: Colors.lightGreen[800],
                        iconSize: 50,
                        ),
                      ],
                      ),
                    ),
                    ),
          const SizedBox(height: 30,),
                        Container(

                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                  width: 450,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, spreadRadius: 1),
                    ],
                  ),
                  
                ),
        ],
      ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Localisation()));
        },
        child: const Icon(Icons.location_on, color: Colors.green, size: 35,),
        backgroundColor: Colors.white,
      ),
    );
  }
}





