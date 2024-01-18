import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                  height: media.width * 0.05,
                ),
                        Text(
                          "Hello User..",
                          style: TextStyle(
                              color: TColor.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Welcome Back,",
                          style: TextStyle(color: TColor.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const NotificationView(),
                          //   ),
                          // );
                        },
                        icon: Image.asset(
                          "assets/images/notification_active.png",
                          width: 25,
                          height: 25,
                          fit: BoxFit.fitHeight,
                        ))
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Container(
                  height: media.width*0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: TColor.primaryG),
                      borderRadius: BorderRadius.circular(media.width * 0.075)),
                      child: Stack(
                        alignment:Alignment.center,
                        children: [
                          Image.asset(
                      "assets/images/bg_dots.png",
                      height: media.width * 0.4,
                      width: double.maxFinite,
                      fit: BoxFit.fitHeight,
                    ),
                          
                        ],
                         ),
                )
                ],
                ),
              ), 
        ),      
      ),
      );
   
  }
}