import 'package:flutter/material.dart';


class Hospital {
  final String name;
  final String description;
  final String location;
  final String cont_number;
  final String imageUrl;

  Hospital({
    required this.name,
    required this.description,
    required this.location,
    required this.cont_number,
    required this.imageUrl,
  });
}

class HospitalScreen extends StatelessWidget {
  final List<Hospital> hospitalList = [
    Hospital(
      name: 'Name A',
      description: 'This is a sample description for Hospital A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name B',
      description: 'This is a sample description for Hospital  B.',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name C',
      description: 'This is a sample description for Hospital  A.',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name A',
      description: 'This is a sample description for Hospital A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name A',
      description: 'This is a sample description for Hospital A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name B',
      description: 'This is a sample description for Hospital  B.',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name C',
      description: 'This is a sample description for Hospital  A.',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name A',
      description: 'This is a sample description for Hospital A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name A',
      description: 'This is a sample description for Hospital A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name B',
      description: 'This is a sample description for Hospital  B.',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name C',
      description: 'This is a sample description for Hospital  A.',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    Hospital(
      name: 'Name A',
      description: 'This is a sample description for Hospital A.',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/hospital.jpg',
    ),
    // Add more ambulance items here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hospital List'),
        ),
        body: HospitalListScreen(hospitalList: hospitalList),
      ),
    );
  }
}

class HospitalListScreen extends StatefulWidget {
  final List<Hospital> hospitalList;

  HospitalListScreen({required this.hospitalList});

  @override
  _HospitalListScreenState createState() => _HospitalListScreenState();
}

class _HospitalListScreenState extends State<HospitalListScreen> {
  late TextEditingController searchController;
  List<Hospital> filteredHospitalList = [];

  @override
  void initState() {
    super.initState();
    filteredHospitalList = widget.hospitalList;
    searchController = TextEditingController();
    searchController.addListener(filterMedicineList);
  }

  void filterMedicineList() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredHospitalList = widget.hospitalList.where((hospital) {
        return hospital.name.toLowerCase().contains(query);
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
              itemCount: filteredHospitalList.length,
              itemBuilder: (context, index) {
                return HospitalList(hospital: filteredHospitalList[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class HospitalList extends StatelessWidget {
  final Hospital hospital;

  HospitalList({required this.hospital});

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
                backgroundImage: AssetImage(hospital.imageUrl),
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
                    hospital.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(hospital.description),
                  Text(hospital.location,style: const TextStyle(color: Colors.indigoAccent),),
                  Text(hospital.cont_number,style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 18),),
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
