import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:flutter/material.dart';
class OnBoardingPage extends StatelessWidget {
  final Map pObj;
  const OnBoardingPage({super.key, required this.pObj});

  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    
    return SizedBox(
              width: media.width,
              height: media.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    pObj["image"].toString(),
                    width: media.width, 
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      pObj["title"].toString(), 
                      style: TextStyle(
                      color: TColor.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                    pObj["subtitle"].toString(), 
                    style: TextStyle(
                      color: TColor.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                  ),
                
              ]
              ),
            );
  }
}