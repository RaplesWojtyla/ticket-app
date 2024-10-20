import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
      ),
      body: ListView(
        children: hotelList
            .map((singleHotel) => Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Hotel(hotel: singleHotel)))
            .toList(),
      ),
    );
  }
}
