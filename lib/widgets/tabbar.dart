import 'package:flutter/material.dart';
import 'package:maaz_design/utils/app_colors.dart';

class Tabbarwidget extends StatelessWidget {
  final TabController tabController;

  final List<Widget> tabs;
  const Tabbarwidget({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.transparent,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: TabBar(
        controller: tabController,
        tabs: tabs,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white,
        labelStyle: const TextStyle(
          fontFamily: 'Sansation',
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.primaryColor,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
      ),
    );
  }
}
