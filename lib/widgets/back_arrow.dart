import 'package:flutter/material.dart';
import 'package:maaz_design/utils/app_colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 25,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: AppColors.primaryColor.withOpacity(0.15),
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
