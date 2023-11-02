import 'package:flutter/material.dart';

import '../screens/book_appoint_screen.dart';

class BrainCategory {
  final String name;
  final String title;
  final String subtitle;
  final String imagePath;
  bool isBooked;

  BrainCategory(
      {required this.name,
        required this.title,
        required this.subtitle,
        required this.imagePath,
        this.isBooked = false});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BrainCategoryList(),
    );
  }
}

class BrainCategoryList extends StatefulWidget {
  @override
  _BrainCategoryListState createState() => _BrainCategoryListState();
}

class _BrainCategoryListState extends State<BrainCategoryList> {
  final List<BrainCategory> allCategories = [
    BrainCategory(
      name: 'Dr. Alice Johnson',
      title: 'MD - Neurology',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor4.jpg',
    ),
    BrainCategory(
      name: 'Dr. Sophia Martinez',
      title: 'MD - Pediatric Neurology',
      subtitle: 'Enhance your appearance',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    BrainCategory(
      name: 'Dr. Robert Davis',
      title: ' MD - Neuropsychiatry',
      subtitle: 'For complex cases',
      imagePath: 'assets/images/doctor3.jpg',
    ),
    BrainCategory(
      name: 'Dr. Sophia Martinez',
      title: 'MD - Neuro-oncology',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor2.jpg',
    ),
    BrainCategory(
      name: 'Dr. Alice Johnson',
      title: 'MD - Neurology',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor4.jpg',
    ),
    BrainCategory(
      name: 'Dr. Sophia Martinez',
      title: 'MD - Pediatric Neurology',
      subtitle: 'Enhance your appearance',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    BrainCategory(
      name: 'Dr. Robert Davis',
      title: ' MD - Neuropsychiatry',
      subtitle: 'For complex cases',
      imagePath: 'assets/images/doctor3.jpg',
    ),
    BrainCategory(
      name: 'Dr. Sophia Martinez',
      title: 'MD - Neuro-oncology',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor2.jpg',
    ),
  ];

  List<BrainCategory> filteredCategories = [];

  @override
  void initState() {
    super.initState();
    filteredCategories.addAll(allCategories);
  }

  void filterCategories(String query) {
    setState(() {
      filteredCategories = allCategories
          .where((category) =>
          category.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brain Categories'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: filterCategories,
              decoration: InputDecoration(
                hintText: 'Search for doctor',
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
                itemCount: filteredCategories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    category: filteredCategories[index],
                    onBooked: () {
                      setState(() {
                        filteredCategories[index].isBooked =
                        !filteredCategories[index].isBooked;
                      });
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final BrainCategory category;
  final VoidCallback onBooked;

  CategoryItem({required this.category, required this.onBooked});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
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
                backgroundImage: AssetImage(category.imagePath),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(category.title),
                  Text(category.subtitle),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppointmentApp(),
                        ));
                  }, child: Text('Book Appointment'))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    category.isBooked
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: category.isBooked ? Colors.redAccent : Colors.grey,
                    size: 30.0,
                  ),
                  onPressed: onBooked,
                ),
                IconButton(
                  icon: Icon(
                    Icons.mail,
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
