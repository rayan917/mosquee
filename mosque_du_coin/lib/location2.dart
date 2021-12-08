import 'package:flutter/material.dart';
import 'package:mosque_du_coin/add.dart';

class location2 extends StatelessWidget {
  const location2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return  Container(
      
      child: Column(
        children: [
                    Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
              const  Text('Aucune mosquée ne correspond à votre recherche.', 
                style: TextStyle(color: Colors.green, fontSize: 20),
                textAlign: TextAlign.center, 
                ),
          const SizedBox(height: 20),
                RaisedButton(
                  color: Colors.lightGreen[800],
                  child:const Text('Une mosqué à nous proposer? Par ici !',
                  style: TextStyle( fontSize: 16),
                  ),
                  textColor: Colors.white,
                  onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPage()));
                  },)
              ], 
              ),
          ),
              ],
            ),
    );
    
  }
}