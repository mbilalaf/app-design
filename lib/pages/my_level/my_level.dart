import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maaz_design/pages/my_level/charm_level_body/charm_level_body.dart';
import 'package:maaz_design/pages/my_level/wealth_level_body/wealth_level_body.dart';
import 'package:maaz_design/utils/app_colors.dart';
import 'package:maaz_design/widgets/tabbar.dart';

class MyLevelPage extends StatefulWidget {
  const MyLevelPage({super.key});

  @override
  State<MyLevelPage> createState() => _MyLevelPageState();
}

class _MyLevelPageState extends State<MyLevelPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurpule,
      appBar: AppBar(
        backgroundColor: AppColors.darkPurpule,
        centerTitle: true,
        title:  Text(
          'My Level',
          style: GoogleFonts.roboto(
          
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Center(
              child: Tabbarwidget(
                tabController: tabController,
                tabs: const [
                  Tab(text: 'Wealth Level'),
                  Tab(text: 'Charm Level'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  WealthLevelBody(),
                  CharmLevelBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
