import 'package:flutter/material.dart';


class BloodDoner {
  final String name;
  final String blood_group;
  final String location;
  final String cont_number;
  final String imageUrl;

  BloodDoner({
    required this.name,
    required this.blood_group,
    required this.location,
    required this.cont_number,
    required this.imageUrl,
  });
}

class BloodDonerScreen extends StatelessWidget {
  final List<BloodDoner> blood_donerList = [
    BloodDoner(
      name: 'Name A',
      blood_group: 'A+',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name B',
      blood_group: 'B+',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name C',
      blood_group: 'A-',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name A',
      blood_group: 'A+',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name B',
      blood_group: 'B+',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name C',
      blood_group: 'A-',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name A',
      blood_group: 'A+',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name B',
      blood_group: 'B+',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name C',
      blood_group: 'A-',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name A',
      blood_group: 'A+',
      location: 'Khulna',
      cont_number: '01099999998',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name B',
      blood_group: 'B+',
      location: 'Khulna',
      cont_number: '01700000000',
      imageUrl: 'assets/images/blood_doner.png',
    ),
    BloodDoner(
      name: 'Name C',
      blood_group: 'A-',
      location: 'Khulna',
      cont_number: '01800765433',
      imageUrl: 'assets/images/blood_doner.png',
    ),

    // Add more ambulance items here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Blood Doner'),
        ),
        body: BloodDonerListScreen(bloodDonerList: blood_donerList),
      ),
    );
  }
}

class BloodDonerListScreen extends StatefulWidget {
  final List<BloodDoner> bloodDonerList;

  BloodDonerListScreen({required this.bloodDonerList});

  @override
  _BloodDonerListScreenState createState() => _BloodDonerListScreenState();
}

class _BloodDonerListScreenState extends State<BloodDonerListScreen> {
  late TextEditingController searchController;
  List<BloodDoner> filteredBloodDonerList = [];

  @override
  void initState() {
    super.initState();
    filteredBloodDonerList = widget.bloodDonerList;
    searchController = TextEditingController();
    searchController.addListener(filterBloodDonerList);
  }

  void filterBloodDonerList() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredBloodDonerList = widget.bloodDonerList.where((medicine) {
        return medicine.blood_group.toLowerCase().contains(query);
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
              labelText: 'Search by Blood Group',
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
              itemCount: filteredBloodDonerList.length,
              itemBuilder: (context, index) {
                return MedicineItem(blood_doner: filteredBloodDonerList[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MedicineItem extends StatelessWidget {
  final BloodDoner blood_doner;

  MedicineItem({required this.blood_doner});

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
                backgroundImage: AssetImage(blood_doner.imageUrl),
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
                    blood_doner.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(blood_doner.blood_group,style: TextStyle(fontSize: 34,fontWeight: FontWeight.w800,color: Colors.red),),
                  Text(blood_doner.location,style: const TextStyle(color: Colors.indigoAccent),),
                  Text(blood_doner.cont_number,style: const TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize: 18),),
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
