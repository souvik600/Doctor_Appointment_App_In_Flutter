import 'package:doctorapplicationapp/colors.dart';
import 'package:doctorapplicationapp/screens/home_categori_screen.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.pColor.withOpacity(0.8),
              AppColors.pColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Padding (
                padding: const EdgeInsets.all(20),
                child: Image.asset("assets/images/doctors.png"),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Doctors Online",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Appoint Your Doctor",
                  style: TextStyle(
                    color: AppColors.wColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 60),
                Material(
                  color: AppColors.wColor,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>HomeCatagoriScreen(),
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: const Text(
                        "Let's Go",
                        style: TextStyle(
                          color: AppColors.pColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Image.asset(
                  "assets/images/linedheart.png",
                  color: AppColors.wColor,
                  scale: 2,
                  
                  )
            ],
            ),
        ),
      ),
    
    );
  }
}