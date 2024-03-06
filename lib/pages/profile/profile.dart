import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maaz_design/utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurpule,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(0.15),
        centerTitle: true,
        title: Text(
          'Update Profile',
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 50,
            ),

            // Name TextField
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter you First  Name',
                hintStyle: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor.withOpacity(0.15),
                    width: 2,
                  ),
                ),
                fillColor: AppColors.primaryColor.withOpacity(0.1),
                filled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
