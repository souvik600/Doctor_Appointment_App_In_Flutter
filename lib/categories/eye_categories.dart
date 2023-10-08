import 'package:flutter/material.dart';

class EyeCategory {
  final String name;
  final String title;
  final String subtitle;
  final String imagePath;
  bool isBooked;

  EyeCategory(
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
      home: EyeCategoryList(),
    );
  }
}

class EyeCategoryList extends StatefulWidget {
  @override
  _EyeCategoryListState createState() => _EyeCategoryListState();
}

class _EyeCategoryListState extends State<EyeCategoryList> {
  final List<EyeCategory> allCategories = [
    EyeCategory(
      name: 'Orthodontics',
      title: 'Dr. Alice Johnson',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EyeCategory(
      name: 'Cosmetic Dentistry',
      title: 'Dr. John Smith',
      subtitle: 'Enhance your appearance',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EyeCategory(
      name: 'Oral Surgery',
      title: 'Dr. Robert Davis',
      subtitle: 'For complex cases',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EyeCategory(
      name: 'Orthodontics',
      title: 'Dr. Alice Johnson',
      subtitle: 'Align your smile',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EyeCategory(
      name: 'Cosmetic Dentistry',
      title: 'Dr. John Smith',
      subtitle: 'Enhance your appearance',
      imagePath: 'assets/images/doctor1.jpg',
    ),
    EyeCategory(
      name: 'Oral Surgery',
      title: 'Dr. Robert Davis',
      subtitle: 'For complex cases',
      imagePath: 'assets/images/doctor1.jpg',
    ),
  ];

  List<EyeCategory> filteredCategories = [];

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
        title: const Text('Eye Categories'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onChanged: filterCategories,
              decoration: const InputDecoration(
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
  final EyeCategory category;
  final VoidCallback onBooked;

  CategoryItem({required this.category, required this.onBooked});

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(category.title),
                  Text(category.subtitle),
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
                  icon: const Icon(
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
