import 'package:fitnessandnutritionapp/common/color_extension.dart';
import 'package:fitnessandnutritionapp/common_widget/tab_button.dart';
import 'package:fitnessandnutritionapp/view/home/home_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket(); 
  Widget currentTab = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: TColor.primaryG,
                ),
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,)
                ]),
            child: Icon(Icons.search,color: TColor.white, size: 35, ),
          ),
        ),
      ),
      
      bottomNavigationBar: BottomAppBar(
          child: Container(
        decoration: BoxDecoration(color: TColor.white, boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))
        ]),
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
                icon: "assets/images/home_tab.png",
                selectIcon: "assets/images/home_tab_select.png",
                isActive: selectTab == 0,
                onTap: () {
                  selectTab = 0;
                  currentTab = const HomeView();
                  if (mounted) {
                    setState(() {});
                  }
                }),
            /*TabButton(
                icon: "assets/images/activity_tab.png",
                selectIcon: "assets/images/activity_tab_select.png",
                isActive: selectTab == 1,
                onTap: () {
                  selectTab = 1;
                  //currentTab = const SelectView();
                  if (mounted) {
                    setState(() {});
                  }
                }),
                */
              const  SizedBox(width: 40,),
            
            TabButton(
                icon: "assets/images/profile_tab.png",
                selectIcon: "assets/images/profile_tab_select.png",
                isActive: selectTab == 1,
                onTap: () {
                  selectTab = 1;
                   //currentTab = const ProfileView();
                  if (mounted) {
                    setState(() {});
                  }
                })
          ],
        ),
      )),
    );
  }
}
