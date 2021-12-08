import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SalatJanazaPage extends StatelessWidget {
  const SalatJanazaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
        children: [
                    Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
              const  Text('C"est à Allah que nous appartenons et c"est vers lui que nous retournons', 
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.center, 
                ),
          const SizedBox(height: 20),
                RaisedButton(
                  color: Colors.lightGreen[800],
                  child: Text('Ajouter une salat janaza '.toUpperCase(),
                  ),
                  textColor: Colors.white,
                  onPressed: (){
                      _openPopup(context);
                  },)
              ], 
              ),
          ),

          const SizedBox(height: 40,),

                Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
        width: 450,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: const Text('Aucune salat janaza n"est prévue',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
        ),
        ),
              ],
            ),
            );
  }

  _openPopup(context) {
    Alert(
     // padding: const EdgeInsets.fromLTRB(100, 80, 100, 80),
        context: context,
        title: 'Ajouter une salat janaza',
        
         
        content: Column(
          children:  <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Adresse de la salat janaza',
                border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
            ),
              ),
            ),

            const SizedBox(height: 10),

             TextField(
             decoration: InputDecoration(
                hintText: 'Votre email',
                border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
            ),
              ),
            ),
             const SizedBox(height: 10),

            TextField(
             decoration: InputDecoration(
                hintText: 'Nom du/des défaut(s)',
                border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
            ),
              ),
            ),
             const SizedBox(height: 10),

            TextField(
             decoration: InputDecoration(
                hintText: 'Votre email',
                border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
            ),
              ),
            ),

             const SizedBox(height: 10),

            TextField(
             decoration: InputDecoration(
                hintText: 'Autres informations',
                border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
            ),
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child:const Text(
              "Valider",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.lightGreen[800],
          )
        ]).show();
  }
}
