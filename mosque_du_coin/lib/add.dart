import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddPage extends StatelessWidget {
 
   AddPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: SingleChildScrollView(
     child: Column(
       children:[

                    Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 10, 0),
                padding:const EdgeInsets.all(15),
                child: Column(
                  children: [
                      const Text('Aidez-nous en ajoutant des mosquées manquantes.',
                      style:  TextStyle(color: Colors.black, fontSize: 18),
                      textAlign: TextAlign.center,
                      ),

                      IconButton(
                        onPressed: () {
                          _openPopup(context);
                        }, 
                        icon:const Icon(Icons.photo_camera),
                        color: Colors.lightGreen[800],
                        iconSize: 40,)
                  ],
                ),
              ),
            Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'Adresse*',
          border:OutlineInputBorder(
            borderRadius: 
            BorderRadius.circular(5),
            ),
        ),
        ),

        const SizedBox(height: 15),

        TextField(
        decoration: InputDecoration(
          hintText: 'Nom de la mosqué*',
          border: OutlineInputBorder(
            borderRadius: 
            BorderRadius.circular(5),
            ),
        ),
        ),

        const SizedBox(height: 15),

        TextField(
        decoration: InputDecoration(
          hintText: 'Votre email*',
          border: OutlineInputBorder(
            borderRadius: 
            BorderRadius.circular(5),
            ),
        ),
        ),
      const Text('*N/A lorsque vous ne connaissez pas l"information'),
      ],
      ),
      ),


      Container(
  margin: const EdgeInsets.all(10),
  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
child: Column(
children: [
  Row(
  children: [
    const Icon(Icons.verified_user, 
    color: Colors.grey,), 
    const Text(
      'Etes-vous le responsable \n'
      'de cette mosquée ?',
      style: TextStyle(fontSize: 15, ),
    ),
    Row(
      children: [
      
  Radio(
     value: 0, 
   groupValue: 1,             
   onChanged: (value) {},
      ),
     const  Text('oui'),

     Radio(
      value: 1, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('non'),
      ],
    ),
  ],
  ),


   Row(
  children: [
    const Icon(Icons.pregnant_woman, 
    color: Colors.grey,), 
    const Text(
      'Salle pour les \n'
      ' femmes ?',
      style: TextStyle(fontSize: 15,)
    ),
    Row(
      children: [
    Radio(
      value: 0, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('oui'),

     Radio(
      value: 0, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('non'),

      Radio(
      value: 1, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('N/A'),
      ],
    ),
  ],
  ),

 Row(
  children: [
    const Icon(Icons.home, 
    color: Colors.grey), 
    const Text(
      'Priére du \n'
      'vendredi ?',
      style: TextStyle(fontSize: 15),
    ),
    Row(
      children: [
    Radio(
      value: 0, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('oui'),

     Radio(
      value: 0, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('non'),

      Radio(
      value: 1, 
      groupValue: 1, 
      onChanged: (value){},
      ),
     const  Text('N/A'),
      ],
    ),
  ],
  ),
],
),
),


      Container(
  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
  width: double.infinity,
  child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.lightGreen[800],
    padding: const EdgeInsets.fromLTRB(110, 10, 110, 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  ),
  child: const Text(
    "Valider",
    style: const TextStyle(
      color: Colors.white,
      fontSize: 15.0,
    ),
  ),
  onPressed: () {},
),
      ),
       ],
      ),
     ),
      ),
      );
 
  }

  _openPopup(context) {
    Alert(
        context: context,
        title: "Select a Photo",
        
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child:const Text(
              "Cancel",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.lightGreen[800],
          )
        ]).show();
  }
}





