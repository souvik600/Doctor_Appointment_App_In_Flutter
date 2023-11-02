import 'package:doctorapplicationapp/colors.dart';
import 'package:doctorapplicationapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../recommended_doctor_list/doctor4_list.dart';
import '../widgets/slide_show_widget.dart';
import 'ambulance_screen.dart';
import 'blood_doner_screen.dart';
import 'bmi_screen.dart';
import 'hospital_screen.dart';
import 'medicine_screen.dart';

class HomeCatagoriScreen extends StatelessWidget {
  get sdColor => null;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xFFD9E4EE),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.pColor.withOpacity(0.8),
                      AppColors.pColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/doctor1.jpg"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: AppColors.wColor,
                              size: 30,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Hi, Jaita 👋",
                          style: TextStyle(
                            color: AppColors.wColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15,
                            bottom: 1,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                            color: AppColors.wColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.sdColor,
                                blurRadius: 6,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                            child: SlideshowWidget()
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.wColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.sdColor,
                                blurRadius: 6,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here...",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.bcolor),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: const EdgeInsets.all(15),

                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 120,
                                width: 100,
                                //color: Colors.lightBlueAccent,
                                decoration: const BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(blurRadius: 5.0)
                                    ] ,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>HomeScreen(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: const BoxDecoration(

                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/doctor.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Center(child: Text("Doctor Point",style: TextStyle(fontWeight: FontWeight.w600),))
                                  ],
                                ),
                              ),

                              const SizedBox(
                                width: 15,
                              ),
                              //For Heart
                              Container(
                                height: 120,
                                width: 100,
                                //color: Colors.lightBlueAccent,
                                decoration: const BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(blurRadius: 5.0)
                                    ] ,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>HospitalScreen(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: const BoxDecoration(

                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/hospital.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Center(child: Text("Hospital",style: TextStyle(fontWeight: FontWeight.w600),))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //For eye
                              Container(
                                height: 120,
                                width: 100,
                                //color: Colors.lightBlueAccent,
                                decoration: const BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(blurRadius: 5.0)
                                    ] ,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>AmbulanceScreen(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: const BoxDecoration(

                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/ambulance.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Center(child: Text("Ambulance",style: TextStyle(fontWeight: FontWeight.w600),))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              //For Dental
                              Container(
                                height: 120,
                                width: 100,
                                //color: Colors.lightBlueAccent,
                                decoration: const BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(blurRadius: 5.0)
                                    ] ,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>MedicineScreen(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: const BoxDecoration(

                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/medicine.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Center(child: Text("Medicine",style: TextStyle(fontWeight: FontWeight.w600),))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //For Heart
                              Container(
                                height: 120,
                                width: 100,
                                //color: Colors.lightBlueAccent,
                                decoration: const BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(blurRadius: 5.0)
                                    ] ,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>BloodDonerScreen(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: const BoxDecoration(

                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/blood_doner.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Center(child: Text("Blood Doner",style: TextStyle(fontWeight: FontWeight.w600),))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //For eye
                              Container(
                                height: 120,
                                width: 100,
                                //color: Colors.lightBlueAccent,
                                decoration: const BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(blurRadius: 5.0)
                                    ] ,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>BMI_Calculetor(),
                                            ));
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: const BoxDecoration(

                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Image.asset(
                                            "assets/images/bmi.jpeg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3,),
                                    const Center(child: Text("BMI",style: TextStyle(fontWeight: FontWeight.w600),))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
