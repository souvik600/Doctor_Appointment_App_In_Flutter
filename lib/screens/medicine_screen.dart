import 'package:flutter/material.dart';


class Medicine {
  final String name;
  final String description;
  final String company;
  final String category;
  final String imageUrl;

  Medicine({
    required this.name,
    required this.description,
    required this.company,
    required this.category,
    required this.imageUrl,
  });
}

class MedicineScreen extends StatelessWidget {
  final List<Medicine> medicineList = [
    Medicine(
      name: 'Medicine A',
      description: 'This is a sample description for Medicine A.',
      company: 'Square Pharma. Ltd.',
      category: 'Tablet',
      imageUrl: 'assets/images/medicine.jpg',
    ),
    Medicine(
      name: 'Medicine B',
      description: 'This is a sample description for Medicine B.',
      company: 'Square Pharma. Ltd.',
      category: 'Injection',
      imageUrl: 'assets/images/injection.jpg',
    ),
    Medicine(
      name: 'Medicine A',
      description: 'This is a sample description for Medicine A.',
      company: 'Square Pharma. Ltd.',
      category: 'Tablet',
      imageUrl: 'assets/images/medicine.jpg',
    ),
    Medicine(
      name: 'Medicine B',
      description: 'This is a sample description for Medicine B.',
      company: 'Square Pharma. Ltd.',
      category: 'Injection',
      imageUrl: 'assets/images/injection.jpg',
    ),
    Medicine(
      name: 'Medicine A',
      description: 'This is a sample description for Medicine A.',
      company: 'Square Pharma. Ltd.',
      category: 'Tablet',
      imageUrl: 'assets/images/medicine.jpg',
    ),
    Medicine(
      name: 'Medicine B',
      description: 'This is a sample description for Medicine B.',
      company: 'Square Pharma. Ltd.',
      category: 'Injection',
      imageUrl: 'assets/images/injection.jpg',
    ),
    Medicine(
      name: 'Medicine A',
      description: 'This is a sample description for Medicine A.',
      company: 'Square Pharma. Ltd.',
      category: 'Tablet',
      imageUrl: 'assets/images/medicine.jpg',
    ),
    Medicine(
      name: 'Medicine B',
      description: 'This is a sample description for Medicine B.',
      company: 'Square Pharma. Ltd.',
      category: 'Injection',
      imageUrl: 'assets/images/injection.jpg',
    ),
    Medicine(
      name: 'Medicine A',
      description: 'This is a sample description for Medicine A.',
      company: 'Square Pharma. Ltd.',
      category: 'Tablet',
      imageUrl: 'assets/images/medicine.jpg',
    ),
    Medicine(
      name: 'Medicine B',
      description: 'This is a sample description for Medicine B.',
      company: 'Square Pharma. Ltd.',
      category: 'Injection',
      imageUrl: 'assets/images/injection.jpg',
    ),
    // Add more medicine items here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Medicine List'),
        ),
        body: MedicineListScreen(medicineList: medicineList),
      ),
    );
  }
}

class MedicineListScreen extends StatefulWidget {
  final List<Medicine> medicineList;

  MedicineListScreen({required this.medicineList});

  @override
  _MedicineListScreenState createState() => _MedicineListScreenState();
}

class _MedicineListScreenState extends State<MedicineListScreen> {
  late TextEditingController searchController;
  List<Medicine> filteredMedicineList = [];

  @override
  void initState() {
    super.initState();
    filteredMedicineList = widget.medicineList;
    searchController = TextEditingController();
    searchController.addListener(filterMedicineList);
  }

  void filterMedicineList() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredMedicineList = widget.medicineList.where((medicine) {
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
              labelText: 'Search by Medicine Name',
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
              itemCount: filteredMedicineList.length,
              itemBuilder: (context, index) {
                return MedicineItem(medicine: filteredMedicineList[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MedicineItem extends StatelessWidget {
  final Medicine medicine;

  MedicineItem({required this.medicine});

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
                backgroundImage: AssetImage(medicine.imageUrl),
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
                    medicine.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(medicine.description),
                  Text(medicine.company,style: const TextStyle(color: Colors.indigoAccent),),
                  Text(medicine.category,style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 18),),
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
                    Icons.favorite_border_outlined,
                    color: Colors.green,
                    size: 30,
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
