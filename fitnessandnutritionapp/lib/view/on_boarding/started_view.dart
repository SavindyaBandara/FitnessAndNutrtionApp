import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:fitnessandnutritionapp/common_widget/round_button.dart';
import 'package:fitnessandnutritionapp/view/on_boarding/on_boaring_view.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
          width: media.width,
          decoration: BoxDecoration(
            gradient: isChangeColor
                ? LinearGradient(
                    colors: TColor.primaryG,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "Fitness and nutrition App",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Everybody Can Train",
                style: TextStyle(
                  color: TColor.grey,
                  fontSize: 15,
                ),
              ),
              const Spacer(),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: RoundButton(
                    title: "Get Started",
                    type: isChangeColor
                        ? RoundButtonType.textGradient
                        : RoundButtonType.bgGradient,
                    onPressed: () {
                      if (isChangeColor) {
                        //GO Next Screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OnboardingView()));
                      } else {
                        //Change Color
                        setState(() {
                          isChangeColor = true;
                        });
                      }
                    },
                  ),
                ),
              )
              
            ],
          )),
    );
  }
}