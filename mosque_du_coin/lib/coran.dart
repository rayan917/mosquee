import 'package:flutter/material.dart';

class CoranPage extends StatelessWidget {
  final List<String> entries = <String>['الفاتحة', 'البقرة', 'آل عمران','النساء', 'المائدة','الأنعام','الأعراف','الأنفال','التوبة','يونس','هود','يوسف','الرعد','إبراهيم','الحجر'];

   CoranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(  
child:
ListView.separated(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
       child: Row(children: [
        
      
             Text( '  ${entries[index]}'),
             const SizedBox(width:20,),
              Icon(Icons.play_arrow, 
         color: Colors.lightGreen[800],),
      ],
       ),
    );
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(),
),
    );
  }
}