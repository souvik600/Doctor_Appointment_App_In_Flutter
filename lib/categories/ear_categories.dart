import 'package:flutter/material.dart';

import '../screens/book_appoint_screen.dart';

class EarCategory {
  final String name;
  final String title;
  final String subtitle;
  final String imagePath;
  bool isBooked;

  EarCategory(
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
      title: ' Categories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EarCategoryList(),
    );
  }
}

class EarCategoryList extends StatefulWidget {
  @override
  _EarCategoryListState createState() => _EarCategoryListState();
}

class _EarCategoryListState extends State<EarCategoryList> {
  final List<EarCategory> allCategories = [
    EarCategory(
      name: 'Orthodontics',
      title: 'Dr. Alice Johnson',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EarCategory(
      name: 'Cosmetic Dentistry',
      title: 'Dr. John Smith',
      subtitle: 'Enhance your appearance',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EarCategory(
      name: 'Oral Surgery',
      title: 'Dr. Robert Davis',
      subtitle: 'For complex cases',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EarCategory(
      name: 'Orthodontics',
      title: 'Dr. Alice Johnson',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EarCategory(
      name: 'Cosmetic Dentistry',
      title: 'Dr. John Smith',
      subtitle: 'Enhance your appearance',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EarCategory(
      name: 'Oral Surgery',
      title: 'Dr. Robert Davis',
      subtitle: 'For complex cases',
      imagePath: 'assets/images/doctor1.jpg',
    ),
  ];

  List<EarCategory> filteredCategories = [];

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
        title: Text('Ear Categories'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: filterCategories,
              decoration: InputDecoration(
                hintText: 'Search for Doctor',
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
  final EarCategory category;
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
              // child: Image.asset(
              //   category.imagePath,
              //   fit: BoxFit.cover,
              //   height: 100.0,
              // ),
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
                      fontSize: 20.0,
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
