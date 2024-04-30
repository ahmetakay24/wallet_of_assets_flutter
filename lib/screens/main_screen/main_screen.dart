import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/screens/main_screen/widgets/main_screen_bars.dart';
import 'package:varlik_yonetimi/screens/main_screen/widgets/main_screen_buttons.dart';
import 'package:varlik_yonetimi/screens/main_screen/widgets/main_screen_text_and_sections.dart';

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
    return StreamBuilder<QuerySnapshot>(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Expanded(flex: 35, child: TotalAssetsSection()),
            const Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: AssetsManagementsTitle(),
              ),
            ),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AssetsButton(
                  onPressed: () {},
                  icon: Icons.public,
                  title: "Foreign Stocks",
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AssetsButton(
                  onPressed: () {},
                  icon: Icons.location_on,
                  title: "Local Stocks",
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AssetsButton(
                  onPressed: () {},
                  icon: Icons.oil_barrel,
                  title: "Emtia",
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AssetsButton(
                  onPressed: () {},
                  icon: Icons.home,
                  title: "Real Estate",
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MainScreenBottomNavigation(),
    );
  }
}
