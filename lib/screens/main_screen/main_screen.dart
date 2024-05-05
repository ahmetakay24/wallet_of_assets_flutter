import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/emtia_bottom_sheet/emtia_bottom_sheets.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/foreign_bottom_sheet/foreign_bottom_sheet.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/local_bottom_sheet/local_bottom_sheets.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/real_estate_bottom_sheet/real_estate_bottom_sheets.dart';
import 'package:varlik_yonetimi/screens/main_screen/widgets/app_and_bottom_bar/main_screen_bars.dart';
import 'package:varlik_yonetimi/screens/main_screen/widgets/buttons/main_screen_buttons.dart';
import 'package:varlik_yonetimi/screens/main_screen/widgets/sections_and_texts/main_screen_text_and_sections.dart';

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
          final emtia = userData["emtia"];
          final foreign = userData["foreign"];
          final estate = userData["estate"];
          final local = userData["local"];

          return MainScreen(
            username: userName,
            emtia: emtia,
            foreign: foreign,
            estate: estate,
            local: local,
          );
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
  const MainScreen({super.key, this.username, this.emtia, this.local, this.foreign, this.estate});
  final String? username;
  final double? emtia;
  final double? local;
  final double? foreign;
  final double? estate;

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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const ForeignBottomSheet();
                      },
                    );
                  },
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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const LocalBottomSheet();
                      },
                    );
                  },
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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const EmtiaBottomSheet();
                      },
                    );
                  },
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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const RealEstateBottomSheet();
                      },
                    );
                  },
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
