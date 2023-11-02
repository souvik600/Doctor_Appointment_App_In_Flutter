import 'package:flutter/material.dart';


class Ambulance {
  final String name;
  final String description;
  final String location;
  final String cont_number;
  final String imageUrl;

  Ambulance({
    required this.name,
    required this.description,
    required this.location,
    required this.cont_number,
    required this.imageUrl,
  });
}

class AmbulanceScreen extends StatelessWidget {
  final List<Ambulance> ambulanceList = [
    Ambulance(
      name: 'Name A',
      description: 'This is a sample description for Ambulance A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name B',
      description: 'This is a sample description for Ambulance  B.',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name C',
      description: 'This is a sample description for Ambulance  A.',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name A',
      description: 'This is a sample description for Ambulance A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name B',
      description: 'This is a sample description for Ambulance  B.',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name C',
      description: 'This is a sample description for Ambulance  A.',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name A',
      description: 'This is a sample description for Ambulance A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name B',
      description: 'This is a sample description for Ambulance  B.',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/ambulance.jpg',
    ),
    Ambulance(
      name: 'Name C',
      description: 'This is a sample description for Ambulance  A.',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/ambulance.jpg',
    ),

    // Add more ambulance items here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ambulance Service'),
        ),
        body: AmbulanceListScreen(ambulanceList: ambulanceList),
      ),
    );
  }
}

class AmbulanceListScreen extends StatefulWidget {
  final List<Ambulance> ambulanceList;

  AmbulanceListScreen({required this.ambulanceList});

  @override
  _AmbulanceListScreenState createState() => _AmbulanceListScreenState();
}

class _AmbulanceListScreenState extends State<AmbulanceListScreen> {
  late TextEditingController searchController;
  List<Ambulance> filteredAmbulanceList = [];

  @override
  void initState() {
    super.initState();
    filteredAmbulanceList = widget.ambulanceList;
    searchController = TextEditingController();
    searchController.addListener(filterMedicineList);
  }

  void filterMedicineList() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredAmbulanceList = widget.ambulanceList.where((medicine) {
        return medicine.name.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: searchController,
            decoration: const InputDecoration(
              labelText: 'Search by Name',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: ListView.builder(
              itemCount: filteredAmbulanceList.length,
              itemBuilder: (context, index) {
                return AmbulanceItem(ambulance: filteredAmbulanceList[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class AmbulanceItem extends StatelessWidget {
  final Ambulance ambulance;

  AmbulanceItem({required this.ambulance});

  @override

  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),

              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(ambulance.imageUrl),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ambulance.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(ambulance.description),
                  Text(ambulance.location,style: const TextStyle(color: Colors.indigoAccent),),
                  Text(ambulance.cont_number,style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 18),),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
