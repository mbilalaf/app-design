import 'package:flutter/material.dart';
import 'package:maaz_design/utils/app_colors.dart';

class LevelTile extends StatelessWidget {
  const LevelTile({
    super.key,
    required this.image,
    required this.level,
    required this.levelNo,
    required this.color,
  });

  final String image;
  final String level;
  final String levelNo;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lvl  ( $level )',
              style: const TextStyle(
                fontFamily: 'Sansation',
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        levelNo,
                        style: const TextStyle(
                          fontFamily: 'Sansation',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
