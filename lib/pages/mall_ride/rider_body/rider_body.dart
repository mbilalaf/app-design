import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maaz_design/models/mall_model.dart';
import 'package:maaz_design/pages/mall_ride/widgets/item_card.dart';

class RiderBody extends StatelessWidget {
  const RiderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 30, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: rideList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 0.955,
              ),
              itemBuilder: (context, index) {
                return ItemCard(
                  days: rideList[index].days,
                  image: rideList[index].image,
                  title: rideList[index].title,
                  price: rideList[index].price,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Room',
            style: GoogleFonts.roboto(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
