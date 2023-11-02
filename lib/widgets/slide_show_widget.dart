import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class SlideshowWidget extends StatelessWidget {
  List<String> imageAssets = [
    'assets/images/doctor.jpg',
    'assets/images/hospital.jpg',
    'assets/images/ambulance.jpg',
    'assets/images/medicine.jpg',
    'assets/images/blood_doner.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        items: imageAssets.map((imageAssets) {
          return Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(imageAssets),
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          //height: 500.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          //autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
         // viewportFraction: 0.8,
        ),
      ),
    );
  }
}
