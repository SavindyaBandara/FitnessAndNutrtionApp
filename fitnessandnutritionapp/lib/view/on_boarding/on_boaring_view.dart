 
import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:fitnessandnutritionapp/common_widget/on_boarding_page.dart';
import 'package:fitnessandnutritionapp/view/login/signup_view.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int selectPage = 0;
  PageController controller =PageController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.addListener(() {
      selectPage = controller.page ?.round() ?? 0;

      setState(() {
        
      });
    });
  }
List pageArr =[
  {"title": "Track Your Goal",
      "subtitle":
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/images/on_1.png"
     
  },
  {"title": "Get burn",
      "subtitle":
          "Lets keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/on_2.png"
     
  },
  {"title": "Eat well",
      "subtitle":
          "Lets keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/on_3.png"
     
  },
  {
      "title": "Improve Sleep\nQuality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      "image": "assets/images/on_4.png",
    },
  ];


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index){
              var pObj = pageArr[index] as Map? ?? {};
                return OnBoardingPage(pObj: pObj) ;
          
            /*return SizedBox(
              width: media.width,
              height: media.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/on_1.png", width: media.width, 
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Track your goal", 
                    style: TextStyle(
                      color: TColor.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tracking your goal progress is essential for achieving success, providing valuable insights into your journey and guiding you towards consistent improvement.", 
                    style: TextStyle(
                      color: TColor.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                  ),
                
              ]
              ),
            );*/
            }
            ),
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircularProgressIndicator(
                      color: TColor.primaryColor1,
                      value: (selectPage + 1)/4,
                      strokeWidth: 2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        width: 60,
                        height: 60,
                    decoration: BoxDecoration(color: TColor.primaryColor1, borderRadius: BorderRadius.circular(35)),
                    child: IconButton(icon: Icon( Icons.navigate_next, color: TColor.white, ), onPressed: (){
                    if(selectPage< 3){
                      selectPage = selectPage + 1;
                              controller.jumpToPage(selectPage);
                              //controller.animateToPage(selectPage, duration: const Duration(milliseconds: 600), curve: Curves.bounceInOut);
                    }
                    else{
                      print("Open welcome screen");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpView()));
                      
                    }
                    },),
                    
                  ),
                  
                ],
              ),
            )
        ],
      ),
    );
  }
}

























/*import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:flutter/material.dart';

class OnboardingView extends Stat efulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Tcolor.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemBuilder: (context, index){

            return SizedBox(
              width: media.width,
              height: media.height,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image:ExactAssetImage(
                    "assets/images/images 2.png",
                    ),
                    )
                ],

              ),
            );
          }
          )
        ],
      ),
    );
  }
}*/