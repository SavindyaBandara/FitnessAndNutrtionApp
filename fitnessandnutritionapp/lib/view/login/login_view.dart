import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:fitnessandnutritionapp/common_widget/round_button.dart';
import 'package:fitnessandnutritionapp/common_widget/round_textfield.dart';
import 'package:fitnessandnutritionapp/view/home/home_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
   bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
             SizedBox(
              height: media.width*0.05,
              ),
            Text("Login Here", style: TextStyle(color: TColor.black,fontSize:20, fontWeight: FontWeight.w700),
            
            ),
            Text("Already you have an account", style: TextStyle(color: TColor.grey,fontSize:12 ),
            ),
          
            SizedBox(
              height: media.width*0.05,
              ),
            
               const RoundTextField(
                  hitText: "Email",
                  icon: "assets/images/email.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextField(
                  hitText: "Password",
                  icon: "assets/images/lock.png",
                      obscureText: true,
                  rigtIcon: TextButton(
                      onPressed: () {},
                      child: Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "assets/images/show_password.png",
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                            color: TColor.grey,
                          )
                          )
                          ),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: TColor.grey,
                        size: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                          color: TColor.grey,
                          fontSize: 10,
                    ),
                    ),
                  ],
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.2,
                ),
                 RoundButton(title: "Login ", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()  ));
                }, fontSize: 16,),
                SizedBox(
                  height: media.width * 0.04,
                ),
                 Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      color: TColor.grey.withOpacity(0.5),
                    )),
                    Text(
                      "  Or  ",
                      style: TextStyle(color: TColor.black, fontSize: 12),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: TColor.grey.withOpacity(0.5),
                    )),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.grey.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/google.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),

                     SizedBox(
                      width: media.width * 0.04,
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                          border: Border.all(
                            width: 1,
                            color: TColor.grey.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/facebook.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    )
                  ],
                ),
  
                TextButton(
                  onPressed: () {
                    //  Navigator.push(
                    //    context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const CompleteProfileView()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't you have an account ",
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(
                            color: TColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),

          ]),
        ),
      ),
      )
    );
  }
}