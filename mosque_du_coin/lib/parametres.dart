import 'package:flutter/material.dart';

class ParametrePage extends StatelessWidget {
final List<String> entries = <String>['A', 'B', 'C'];

   

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
      
      Text(' ${entries[index]}'),
       ],
       ),
    );
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(),
),
    );
  }
}