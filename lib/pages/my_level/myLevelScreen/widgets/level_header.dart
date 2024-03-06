import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelHeader extends StatelessWidget {
  const LevelHeader({
    super.key,
    required this.colorOne,
    required this.colorTwo,
  });

  final Color colorOne;
  final Color colorTwo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 170,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [
                    colorOne,
                    colorTwo,
                  ],
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 0,
          left: 24,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              'assets/images/profile-1.png',
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 140,
          child: Text(
            'Hamza1122',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          top: 90,
          left: 14,
          right: 14,
          child: Row(
            children: [
              Text(
                'Lv.0',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      // width: MediaQuery.sizeOf(context).width * 0.6,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Lv.1',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 125,
          right: MediaQuery.sizeOf(context).width * 0.1,
          left: MediaQuery.sizeOf(context).width * 0.1,
          child: Text(
            'To the next level need 200.0 experience points',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
