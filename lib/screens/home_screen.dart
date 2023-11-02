import 'package:doctorapplicationapp/colors.dart';
import 'package:doctorapplicationapp/widgets/doctors_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../categories/brain_categories.dart';
import '../categories/dental_categories.dart';
import '../categories/ear_categories.dart';
import '../categories/eye_categories.dart';
import '../categories/heart_categories.dart';

class HomeScreen extends StatelessWidget{

  get sdColor => null;
  @override
  Widget build(BuildContext context){
    return Material(
      color: const Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height:180,
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
                )
              ),
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
                              AssetImage(
                               "assets/images/doctor1.jpg"),
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
                        const Text(
                          "Your Health is Our\nFirst Priority",
                          style: TextStyle(
                            color: AppColors.wColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15,bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55 ,
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
                          color: AppColors.bcolor
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: 100,
                        child: Row(
                          children: [

                            //For Dental
                            Column(
                              children: [
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: FloatingActionButton( //<-- SEE HERE
                                    backgroundColor:Colors.white,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> DentalCategoryList(),
                                      ));
                                    },
                                    child: Icon(
                                      MdiIcons.toolboxOutline,
                                      size: 35,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                const Text('Dental',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            const SizedBox(width: 15,),
                            //For Heart
                            Column(
                              children: [
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: FloatingActionButton( //<-- SEE HERE
                                    backgroundColor:Colors.white,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> heartCategoryList(),
                                      ));
                                    },
                                    child: Icon(
                                      MdiIcons.heartPlus,
                                      size: 35,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                                const Text('Heart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            const SizedBox(width: 15,),
                            //For eye
                            Column(
                              children: [
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: FloatingActionButton( //<-- SEE HERE
                                    backgroundColor:Colors.white,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> EyeCategoryList(),
                                      ));
                                    },
                                    child: Icon(
                                      MdiIcons.eye,
                                      size: 35,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                                const Text('Eye',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            const SizedBox(width: 15,),
                            //Brain
                            Column(
                              children: [
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: FloatingActionButton( //<-- SEE HERE
                                    backgroundColor:Colors.white,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> BrainCategoryList(),
                                      ));
                                    },
                                    child: Icon(
                                      MdiIcons.brain,
                                      size: 35,
                                      color: Colors.brown,
                                    ),
                                  ),
                                ),
                                const Text('Brain',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            const SizedBox(width: 15,),
                            Column(
                              children: [
                                SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: FloatingActionButton( //<-- SEE HERE
                                    backgroundColor:Colors.white,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=> EarCategoryList(),
                                      ));
                                    },
                                    child: Icon(
                                      MdiIcons.earHearing,
                                      size: 35,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                const Text('Ear',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Recommended Doctors",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.bcolor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    DoctorsSelection(),
                  ],
                ),
              ),
          ],
        ),
      )
    );
  }
}