import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Appointment {
  String name;
  String address;
  String contactNumber;
  String time;
  String date;
  String description;

  Appointment({
    required this.name,
    required this.address,
    required this.contactNumber,
    required this.time,
    required this.date,
    required this.description,
  });
}

class AppointmentApp extends StatelessWidget {
  final List<Appointment> appointments = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Appointment Booking'),
        ),
        body: AppointmentForm(appointments: appointments),
      ),
    );
  }
}

class AppointmentForm extends StatefulWidget {
  final List<Appointment> appointments;

  AppointmentForm({required this.appointments});

  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  get timeinput => null;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Enter your Details:",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person_2_rounded),
                  labelText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  icon: Icon(Icons.add_card_rounded),
                  labelText: 'Address',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Address';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: contactController,
                decoration: InputDecoration(
                  icon: Icon(Icons.contact_emergency),
                  labelText: 'Contact',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Contact Number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: timeController, //editing controller of this TextField
                decoration: InputDecoration(
                  icon: Icon(Icons.timer), //icon of text field
                  labelText: "Enter Time" ,//label text of field
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                readOnly: true,  //set it true, so that user will not able to edit text
                onTap: () async {
                  TimeOfDay? pickedTime =  await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );
                  if(pickedTime != null ){
                    print(pickedTime.format(context));   //output 10:51 PM
                    DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                    //converting to DateTime so that we can further format on different pattern.
                    print(parsedTime); //output 1970-01-01 22:53:00.000
                    String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                    print(formattedTime); //output 14:59:00
                    //DateFormat() is from intl package, you can format the time on any pattern you need.
                    setState(() {
                      timeController.text = formattedTime; //set the value of text field.
                    });
                  }else{
                    print("Time is not selected");
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: dateController, //editing controller of this TextField
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today), //icon of text field
                  labelText: "Enter Date",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                readOnly: true,  //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );

                  if(pickedDate != null ){
                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement

                    setState(() {
                      dateController.text = formattedDate; //set output date to TextField value.
                    });
                  }else{
                    print("Date is not selected");
                  }
                },
              ),

              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  icon: Icon(Icons.add_chart_rounded),
                  labelText: 'Description',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your problem';
                  }
                  return null;
                },
              ),

              // Add similar TextFormField widgets for other fields
              // (address, contact number, time, date, description)
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final appointment = Appointment(
                        name: nameController.text,
                        address: addressController.text,
                        contactNumber: contactController.text,
                        time: timeController.text,
                        date: dateController.text,
                        description: descriptionController.text,
                      );

                      setState(() {
                        widget.appointments.add(appointment);
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppointmentDetailsScreen(
                              appointment: appointment),
                        ),
                      );
                    }
                  },
                  child: const Text('Book Appointment'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
