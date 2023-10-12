import 'package:doctorapplicationapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../screens/book_appoint_screen.dart';


class RecommendedDoctor_4_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heartpluse;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFD9E4EE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent.withOpacity(0.1),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFF2F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.sdColor,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                color: AppColors.pColor,
                size: 28,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFF2F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.sdColor,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Center(
              child: Icon(
                Icons.favorite_outline,
                color: AppColors.pColor,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/doctor3.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.pColor.withOpacity(0.9),
                              AppColors.pColor.withOpacity(0),
                              AppColors.pColor.withOpacity(0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          'Patients',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.wColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '1.8k',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.wColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          'Experience',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.wColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '10 yr',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.wColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Rating',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.wColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '2.5 ⭐',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.wColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Dr D",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: AppColors.pColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(MdiIcons.heartPulse, color: Colors.red, size: 28),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Surgeon",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.bcolor.withOpacity(0.6),
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        "Common tests that your surgeon may ask you to have if you have not had them recently are: Blood tests such as a complete blood count (CBC) and kidney, liver, and blood sugar tests. Chest x-ray to check your lungs.",
                        maxLines: 5,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //       child: Text(
              //         "Book Date",
              //         style: TextStyle(
              //           fontSize: 18,
              //           color: AppColors.bcolor.withOpacity(0.8),
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Padding(
              //         padding:
              //             const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //         child: Container(
              //           height: 70,
              //           child: ListView.builder(
              //             shrinkWrap: true,
              //             scrollDirection: Axis.horizontal,
              //             itemCount: 6,
              //             itemBuilder: (context, index) {
              //               return InkWell(
              //                 child: Container(
              //                   margin: const EdgeInsets.symmetric(
              //                       horizontal: 8, vertical: 5),
              //                   padding: const EdgeInsets.symmetric(
              //                       vertical: 5, horizontal: 25),
              //                   decoration: BoxDecoration(
              //                     color: index == 1
              //                         ? AppColors.pColor
              //                         : const Color(0xFFF2F8FF),
              //                     borderRadius: BorderRadius.circular(10),
              //                     boxShadow: const [
              //                       BoxShadow(
              //                         color: AppColors.sdColor,
              //                         blurRadius: 4,
              //                         spreadRadius: 2,
              //                       ),
              //                     ],
              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text(
              //                         "${index + 8}",
              //                         style: TextStyle(
              //                           fontSize: 17,
              //                           color: index == 1
              //                               ? AppColors.wColor
              //                               : AppColors.bcolor.withOpacity(0.6),
              //                         ),
              //                       ),
              //                       Text(
              //                         "DEC",
              //                         style: TextStyle(
              //                           fontSize: 17,
              //                           fontWeight: FontWeight.w500,
              //                           color: index == 1
              //                               ? AppColors.wColor
              //                               : AppColors.bcolor.withOpacity(0.6),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //               );
              //             },
              //           ),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              // Row(
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //       child: Text(
              //         "Book Time",
              //         style: TextStyle(
              //           fontSize: 18,
              //           color: AppColors.bcolor.withOpacity(0.8),
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Padding(
              //         padding:
              //             const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              //         child: Container(
              //           height: 70,
              //           child: ListView.builder(
              //             shrinkWrap: true,
              //             scrollDirection: Axis.horizontal,
              //             itemCount: 6,
              //             itemBuilder: (context, index) {
              //               return InkWell(
              //                 onTap: () {},
              //                 child: Container(
              //                   margin: const EdgeInsets.symmetric(
              //                       horizontal: 8, vertical: 5),
              //                   padding: const EdgeInsets.symmetric(
              //                       vertical: 5, horizontal: 25),
              //                   decoration: BoxDecoration(
              //                     color: index == 1
              //                         ? AppColors.pColor
              //                         : const Color(0xFFF2F8FF),
              //                     borderRadius: BorderRadius.circular(10),
              //                     boxShadow: const [
              //                       BoxShadow(
              //                         color: AppColors.sdColor,
              //                         blurRadius: 4,
              //                         spreadRadius: 2,
              //                       ),
              //                     ],
              //                   ),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text(
              //                         "${(index - 5) + 8} - ${(index - 4) + 8}",
              //                         style: TextStyle(
              //                           fontSize: 17,
              //                           color: index == 1
              //                               ? AppColors.wColor
              //                               : AppColors.bcolor.withOpacity(0.6),
              //                         ),
              //                       ),
              //                       Text(
              //                         "  AM",
              //                         style: TextStyle(
              //                           fontSize: 17,
              //                           fontWeight: FontWeight.w500,
              //                           color: index == 1
              //                               ? AppColors.wColor
              //                               : AppColors.bcolor.withOpacity(0.6),
              //                         ),
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //               );
              //             },
              //           ),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              const SizedBox(
                height: 60,
              )
            ],
          )),
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: GestureDetector(
                  child: Container(
                    height: 45,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: const Center(
                      child: Text(
                        'Book Appointment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.wColor,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppointmentApp(),
                        ));
                  },
                ),
              ))
        ],
      ),
    );
  }
}
