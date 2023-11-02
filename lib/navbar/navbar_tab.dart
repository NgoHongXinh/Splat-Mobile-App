import 'package:flutter/material.dart';
import 'package:testapp/Pages/Ratting_page.dart';
import 'package:testapp/Pages/home.dart';
import 'package:testapp/Pages/setting_page.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index =0;
  static List<Widget> pages =[
    SettingPage(),
    HomePage(),
    RattingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: pages.elementAt(index),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            currentIndex: index,
            onTap: (value){
              setState(() {
                index= value;
              });
            },

            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,size: 30,),
                  label: '',
                  activeIcon: Icon(Icons.settings,size: 30,color: Colors.deepOrange),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports_basketball_outlined,size: 30),
                  label: '',
                  activeIcon: Icon(Icons.sports_basketball_outlined,size: 30,color: Colors.deepOrange,),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.insert_chart_outlined,size: 30),
                  label: '',
                activeIcon: Icon(Icons.insert_chart_outlined,size: 30,color: Colors.deepOrange),
              )
            ],
          ),
      )
    );
  }
}
