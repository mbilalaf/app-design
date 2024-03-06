import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maaz_design/utils/app_colors.dart';
import 'package:maaz_design/widgets/back_arrow.dart';

import 'widgets/add_badge.dart';
import 'widgets/add_badges_backgraoung.dart';

class AddBadges extends StatelessWidget {
  const AddBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurpule,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(0.15),
        centerTitle: true,
        leading: const BackArrow(), // This is Widget
        title: Text(
          'Badges',
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          AddBadgesBackground(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 18,
                right: 18,
                bottom: 40,
              ),
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                ),
                itemBuilder: (context, index) {
                  return const AddBadge();
                },
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),

          // Gift Image
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const ProfilePage(),
              //   ),
              // );
            },
            child: const Image(
              height: 100,
              width: 100,
              image: AssetImage(
                'assets/images/gift.png',
              ),
            ),
          ),
          const SizedBox(height: 25),

          // Text
          Text(
            'Have not yet recieved a special badge',
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
