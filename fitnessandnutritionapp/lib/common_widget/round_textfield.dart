import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String hitText;
  final String icon;
  final EdgeInsets? margin;
  final Widget? rigtIcon;
  const RoundTextField({super.key, required this.hitText, required this.icon,this.controller,this.margin, this.keyboardType,this.obscureText = false,this.rigtIcon });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
            decoration: BoxDecoration(color: TColor.lightGray,borderRadius: BorderRadius.circular(15)),
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
               obscureText: obscureText,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hitText,
                suffixIcon: rigtIcon,
                prefixIcon: Container(
                  alignment: Alignment.center,
                  width: 15, height: 15,
                  child: Image.asset(icon, width: 15,height: 15, fit: BoxFit.contain,color: TColor.grey,)),
                hintStyle: TextStyle(color: TColor.grey,fontSize: 12),
              ),
            ),
          );
  }
}