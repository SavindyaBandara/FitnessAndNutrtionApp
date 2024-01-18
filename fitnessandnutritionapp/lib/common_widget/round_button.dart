import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType { bgGradient, textGradient}

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  final double fontSize;
  final double elevation;
  final FontWeight fontWeight;

  const RoundButton(
      {super.key,
      required this.title,
      this.type = RoundButtonType.bgGradient,
      this.fontSize = 16,
      this.elevation = 1,
      this.fontWeight = FontWeight.w700,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: type == RoundButtonType.bgGradient ? TColor.secondaryG :  TColor.primaryG,
              ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: type == RoundButtonType.bgGradient ||  type == RoundButtonType.bgGradient 
              ? const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 0.5,
                      offset: Offset(0, 0.5))
                ]
              : null),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textColor: TColor.primaryColor1,
        minWidth: double.maxFinite,
        elevation: type == RoundButtonType.bgGradient ||  type == RoundButtonType.bgGradient ? 0 : elevation,
        color: type == RoundButtonType.bgGradient ||  type == RoundButtonType.bgGradient
            ? Colors.transparent
            : TColor.white,
        child: type == RoundButtonType.bgGradient ||  type == RoundButtonType.bgGradient 
            ? Text(title,
                style: TextStyle(
                    color: TColor.white,
                    fontSize: fontSize,
                    fontWeight: fontWeight))
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: TColor.primaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                          Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Text(title,
                    style: TextStyle(
                        color:  TColor.primaryColor1,
                        fontSize: fontSize,
                        fontWeight: fontWeight)),
              ),
      ),
    );
  }
}

/*class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final RoundButtonType type;
  const RoundButton({super.key, required this.title,this.type = RoundButtonType.bgGradient, required this.onPressed, required int fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:TColor.primaryG,
          begin: Alignment.centerLeft, 
          end: Alignment.centerRight),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          boxShadow:type ==RoundButtonType.bgGradient ? const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 0.25,
                          offset: Offset(0, 0.5))
                      ]
                      :null),
      child: MaterialButton(
                      onPressed: onPressed,
                      height: 50,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      textColor:TColor.primaryColor1,
                      color:TColor.white,
                      minWidth:double.maxFinite,
                      elevation:type==RoundButtonType.bgGradient? 0:1,

                      /*child: Ink(
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                        gradient: LinearGradient(colors:TColor.primaryG,
                        begin: Alignment.centerLeft, 
                        end: Alignment.centerRight),
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                        ),*/
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds){
                            return LinearGradient(colors:TColor.primaryG,begin: Alignment.centerLeft, end: Alignment.centerRight).createShader(Rect.fromLTRB(0, 0, bounds.width ,bounds.height)
                            );
                          },
                          child: Text( title,
                          style: TextStyle(
                            color:TColor.white,
                            fontSize: 16, 
                            fontWeight: FontWeight.w700
                          ),
                         ),
                        ),
                      ),
    );
  }
}*/