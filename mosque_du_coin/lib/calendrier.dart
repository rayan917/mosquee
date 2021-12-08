

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendrierPage extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<CalendrierPage> {
  
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
       return Container(
      
      
        child: SingleChildScrollView(
     child: Column(
       children:[

     TableCalendar(
      focusedDay: DateTime.now() ,
      firstDay: DateTime(1990),
      lastDay:DateTime(2060) ,
       calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekVisible: true,

             //Day Changed
             onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(() {
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
              print(focusedDay);
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },

             //To style the Calendar
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.lightGreen[800],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              selectedTextStyle: TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                color: Colors.lightGreen[200],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              defaultDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                color: Colors.lightGreen[800],
                borderRadius: BorderRadius.circular(5.0),
              ),
              formatButtonTextStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),

         Container(
                  margin: const  EdgeInsets.fromLTRB(0, 10, 0, 500),
                  width: double.infinity ,
                  height: 150,
                
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],                 
                  ),
                  child: Row(
                      
                    children:[
                       
                      const Text('date ici '),
                      const SizedBox(width: 150,),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          
                          shape: const RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            
                            
                          ),
                        ),
                        child: const Text(
                          "Changer localisation",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                          ),
                        ),
                        onPressed: () {},
                      ),

                      
                    
                    ],
                  ),
                  
                ),
       ],
        ),
        ),
      
    );
  }
}