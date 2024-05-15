import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/news/view/news_screen.dart';
import 'package:varlik_yonetimi/screens/stocks/view/stocks.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: IconButton(
          icon: const Icon(Icons.logout),
          color: VarlikYonetimiColors().goldColors,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(top: 15),
            child: IconButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NewsScreen(),
                    )),
                icon: Icon(Icons.newspaper, color: VarlikYonetimiColors().goldColors))),
        Padding(
            padding: const EdgeInsets.only(top: 15, right: 5),
            child: IconButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Stocks(),
                    )),
                icon: Icon(
                  Icons.stacked_line_chart,
                  color: VarlikYonetimiColors().goldColors,
                ))),
      ],
      title: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 30),
        child: Text(
          "Hi! $name",
          style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 25),
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
