import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class MainScreenBottomNavigation extends StatelessWidget {
  const MainScreenBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: VarlikYonetimiColors().goldColors,
        activeColor: VarlikYonetimiColors().goldColors,
        tabBackgroundColor: VarlikYonetimiColors().blueColor,
        gap: 0,
        iconSize: 30,
        textSize: 25,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "",
            textColor: VarlikYonetimiColors().goldColors,
          ),
          const GButton(
            icon: Icons.newspaper,
            text: "",
          ),
          const GButton(
            icon: Icons.stacked_line_chart,
            text: "",
          ),
          const GButton(
            icon: Icons.settings,
            text: "",
          ),
        ]);
  }
}

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Text(
          "Hi! Ahmet",
          style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 30),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
