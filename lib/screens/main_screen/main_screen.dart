import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class MainScreenManagement extends StatefulWidget {
  const MainScreenManagement({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreenManagement> createState() => _MainScreenManagementState();
}

class _MainScreenManagementState extends State<MainScreenManagement> {
  final user = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          FirebaseFirestore.instance.collection("users").where("userUID", isEqualTo: user.currentUser!.uid).snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
          final userDocs = snapshot.data!.docs;
          final userData = userDocs.first.data() as Map<String, dynamic>;
          final userName = userData["name"];
          return MainScreen(username: userName);
        } else {
          return const Center(
            child: Text("No data available"),
          );
        }
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, this.username});
  final String? username;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainScreenAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TotalAssetsSection(),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: AssetsManagementsTitle(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    AssetsButton(
                      icon: Icons.oil_barrel,
                      title: "Foreign Stocks",
                      subTitle: 6.2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    AssetsButton(
                      icon: Icons.oil_barrel,
                      title: "Emtia",
                      subTitle: 13.4,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    AssetsButton(
                      icon: Icons.oil_barrel,
                      title: "Emtia",
                      subTitle: 12.2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    AssetsButton(
                      icon: Icons.oil_barrel,
                      title: "Emtia",
                      subTitle: 15.4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GNav(
          color: VarlikYonetimiColors().goldColors,
          activeColor: VarlikYonetimiColors().goldColors,
          tabBackgroundColor: VarlikYonetimiColors().blueColor,
          gap: 8,
          iconSize: 30,
          textSize: 25,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Main",
              textColor: VarlikYonetimiColors().goldColors,
            ),
            const GButton(
              icon: Icons.newspaper,
              text: "News",
            ),
            const GButton(
              icon: Icons.stacked_line_chart,
              text: "Stocks",
            ),
            const GButton(
              icon: Icons.settings,
              text: "Settings",
            ),
          ]),
    );
  }
}

class AssetsManagementsTitle extends StatelessWidget {
  const AssetsManagementsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: VarlikYonetimiColors().goldColors,
            height: 10,
          ),
        ),
        Expanded(
            flex: 2,
            child: Center(
                child: Text(
              "Assets Managements",
              style: TextStyle(fontSize: 25, color: VarlikYonetimiColors().goldColors),
            ))),
        Expanded(
          child: Divider(
            color: VarlikYonetimiColors().goldColors,
            height: 10,
          ),
        ),
      ],
    );
  }
}

class AssetsButton extends StatelessWidget {
  const AssetsButton({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title;
  final double subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceSize(context).height * 0.1,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: VarlikYonetimiColors().goldColors,
      ),
      child: Center(
        child: ListTile(
          leading: Icon(
            icon,
            size: 50,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          subtitle: Text(
            "+%${subTitle.toString()}",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Lato"),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("\$100,000,000,21",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: "Lato")),
              ),
              const Icon(
                Icons.add,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalAssetsSection extends StatelessWidget {
  const TotalAssetsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(181, 145, 68, 1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Text(
                  "Total Assets",
                  style: TextStyle(fontSize: 45, color: VarlikYonetimiColors().blueColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$75,242,12",
                      style: TextStyle(fontSize: 40, color: VarlikYonetimiColors().blueColor, fontFamily: "Lato"),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: InkWell(
                        child: Icon(
                          Icons.remove_red_eye,
                          size: 35,
                          color: VarlikYonetimiColors().blueColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "+\$2,340.8 (%3,13)",
                      style: TextStyle(fontSize: 22, color: VarlikYonetimiColors().blueColor, fontFamily: "Lato"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                        child: Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 25,
                        color: VarlikYonetimiColors().blueColor,
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
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
