import 'package:flutter/material.dart';
import 'package:maaz_design/pages/myLevelScreen/widgets/description.dart';
import 'package:maaz_design/pages/myLevelScreen/widgets/level_tile.dart';
import 'package:maaz_design/utils/app_colors.dart';
import '../myLevelScreen/widgets/level_header.dart';

class WealthLevelBody extends StatelessWidget {
  const WealthLevelBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            LevelHeader(
              colorOne: AppColors.primaryColor.withOpacity(0.5),
              colorTwo: AppColors.primaryColor,
            ),
            const SizedBox(height: 25),

            // Description
            const Description(
              title: 'Level Description',
              description:
                  'When send 1- gold coin gift of will increase 1 wealth experience point. As your level upgrade, the color your level icon will change accordingly.',
            ),
            const SizedBox(height: 18),

            // Level Tiles
            const LevelTile(
              image: 'assets/images/star.png',
              level: '1-9',
              levelNo: '9',
              color: Color(0xff69532E),
            ),
            const SizedBox(height: 12),
            const LevelTile(
              image: 'assets/images/star-2.png',
              level: '10-19',
              levelNo: '19',
              color: Color(0xff333C45),
            ),
            const SizedBox(height: 12),
            const LevelTile(
              image: 'assets/images/star-3.png',
              level: '20-29',
              levelNo: '29',
              color: Color(0xffB47F4A),
            ),
            const SizedBox(height: 12),
            const LevelTile(
              image: 'assets/images/star-4.png',
              level: '30-39',
              levelNo: '39',
              color: Color(0xff637997),
            ),
            const SizedBox(height: 12),
            const LevelTile(
              image: 'assets/images/star-5.png',
              level: '40-49',
              levelNo: '39',
              color: Color(0xffF8B00C),
            ),
            const SizedBox(height: 12),
            const LevelTile(
              image: 'assets/images/star-6.png',
              level: '50-59',
              levelNo: '59',
              color: Color(0xff89C7D5),
            ),
          ],
        ),
      ),
    );
  }
}
