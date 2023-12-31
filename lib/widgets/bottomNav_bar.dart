import 'package:f_43_bootcamp/Pages/home_page.dart';
import 'package:f_43_bootcamp/Pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../constants.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: kBackgroundColor,
      gap: 5,
      tabBackgroundColor: AccentOrangeColor,
      tabMargin: EdgeInsets.all(7),
      padding: EdgeInsets.all(20),
      onTabChange: (index) {},
      tabs: [
        GButton(
         icon: Icons.home, 
         text: "Home",
         onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
          );
         }
        ),
        GButton(
          icon: Icons.favorite_border, 
          text: "Likes",
          onPressed: () {}
        ),
        GButton(
          icon: Icons.settings, 
          text: "Settings",
        ),
        GButton(
          icon: Icons.account_circle_outlined, 
          text: "Profile",
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage())
            );
          },
        ),
      ]
     );
  }
}