import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maaz_design/utils/app_colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.days,
    required this.image,
    required this.title,
    required this.price,
  });

  final String days;
  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 170,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Days
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '$days Days',
                style: GoogleFonts.roboto(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Timer and Image
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  // Timer
                  const Image(
                    height: 8,
                    width: 8,
                    image: AssetImage(
                      'assets/images/timer.png',
                    ),
                  ),
                  const SizedBox(width: 4),

                  // Image
                  Image(
                    height: 52,
                    width: 100,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),

            // Item Name
            Center(
              child: Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 13),

            // Price & Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Coin Image & Price
                Row(
                  children: [
                    // Coin Image
                    const Image(
                      height: 15,
                      width: 15,
                      image: AssetImage(
                        'assets/images/coin.png',
                      ),
                    ),
                    const SizedBox(width: 4),

                    // Price
                    Text(
                      price,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                // Button
                Container(
                  height: 24,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Buy',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
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
