import 'package:doctorapplicationapp/colors.dart';
import 'package:doctorapplicationapp/widgets/doctors_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../categories/brain_categories.dart';
import '../categories/dental_categories.dart';
import '../categories/ear_categories.dart';
import '../categories/eye_categories.dart';
import '../categories/heart_categories.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget{
  // List catNames =[
  //   "Dental",
  //   "Heart",
  //   "Eye",
  //   "Brain",
  //   "Ear",
  //
  // ];
  // List<Icon> catIcons =[
  //   Icon(MdiIcons.toolboxOutline,color: AppColors.pColor,size: 30),
  //   Icon(MdiIcons.heartPlus,color: AppColors.pColor,size: 30),
  //   Icon(MdiIcons.eye,color: AppColors.pColor,size: 30),
  //   Icon(MdiIcons.brain,color: AppColors.pColor,size: 30),
  //   Icon(MdiIcons.earHearing,color: AppColors.pColor,size: 30),
  // ];

  get sdColor => null;
  @override
  Widget build(BuildContext context){
    return Material(
      color: Color(0xFFD9E4EE),
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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                        SizedBox(height: 15),
                        Text(
                          "Hi, Jaita 👋",
                          style: TextStyle(
                            color: AppColors.wColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Your Health is Our\nFirst Priority",
                          style: TextStyle(
                            color: AppColors.wColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15,bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55 ,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.wColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
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
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),

                      ],
                      ),
                      ),
                      Padding(
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
                    SizedBox(height: 15),
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
                                Text('Dental',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 15,),
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
                                Text('Heart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 15,),
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
                                Text('Eye',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 15,),
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
                                Text('Brain',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 15,),
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
                                Text('Ear',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                              ],
                            ),


                          ],
                        ),
                        // child: ListView.builder(
                        //   shrinkWrap: true,
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: catNames.length,
                        //   itemBuilder: (context, index) {
                        //     return Column(
                        //       children: [
                        //         Container(
                        //           margin: EdgeInsets.symmetric(
                        //             vertical: 5,horizontal:15 ),
                        //           height: 60,
                        //           width: 60,
                        //           decoration: BoxDecoration(
                        //             color: Color(0xFFF2F8FF),
                        //             shape: BoxShape.circle,
                        //             boxShadow: [
                        //               BoxShadow(
                        //                 color: AppColors.sdColor,
                        //                 blurRadius: 4,
                        //                 spreadRadius: 2,
                        //               ),
                        //             ],
                        //           ),
                        //         child: Center(
                        //           child: catIcons[index],
                        //           ) ,
                        //         ),
                        //         SizedBox(height: 10),
                        //         Text(
                        //           catNames[index],
                        //           style: TextStyle(
                        //             fontSize: 16,
                        //             fontWeight: FontWeight.w500,
                        //             color: AppColors.bcolor.withOpacity(0.7),
                        //           ),
                        //           ),
                        //       ],
                        //     );
                        //   },
                        // ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
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