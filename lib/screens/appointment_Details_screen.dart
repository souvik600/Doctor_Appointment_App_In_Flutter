import 'package:flutter/material.dart';

import 'book_appoint_screen.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  final Appointment appointment;

  AppointmentDetailsScreen({required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment Details'),
      ),
      body: Container(
        color: Colors.white30,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(6.0),
            decoration:
            BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Appointment Details:",style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(5.0),

                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:Text(
                    'Name: ${appointment.name}',
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(5.0),
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Address: ${appointment.address}',
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(5.0),
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Contact Number: ${appointment.contactNumber}',
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(5.0),
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Time: ${appointment.time}',
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(5.0),
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Date: ${appointment.date}',
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(5.0),
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Description: ${appointment.description}',
                    style: const TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 30,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.verified_user_rounded,color: Colors.green,),
                      Text("Book Appointment Successfully!")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
