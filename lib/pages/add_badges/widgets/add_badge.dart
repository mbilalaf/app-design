import 'package:flutter/material.dart';
import 'package:maaz_design/utils/app_colors.dart';

class AddBadge extends StatelessWidget {
  const AddBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: AppColors.primaryColor.withOpacity(0.15),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.add_rounded,
          color: Colors.white.withOpacity(0.6),
          size: 36,
        ),
      ),
    );
  }
}
