import 'package:ticket_app/base/res/media.dart';

List<Map<String, dynamic>> ticketList = [
  {
    "from": {
      "code": "NYC",
      "name": "New-York"
    },
    "to": {
      "code": "LDN",
      "name": "London"
    },
    "flying_time": "8H 30M",
    "date": "1 MAY",
    "departure_time": "08:00 AM",
    "number": "23"
  },
  {
    "from": {
      "code": "MDN",
      "name": "Medan"
    },
    "to": {
      "code": "JKT",
      "name": "Jakarta"
    },
    "flying_time": "2H 20M",
    "date": "1 OCTOBER",
    "departure_time": "08:00 PM",
    "number": "15"
  },
  {
    "from": {
      "code": "DK",
      "name": "Dhaka"
    },
    "to": {
      "code": "GZ",
      "name": "Guagzhou"
    },
    "flying_time": "4H 20M",
    "date": "12 MAY",
    "departure_time": "11:00 AM",
    "number": "55"
  },
  {
    "from": {
      "code": "DK",
      "name": "Dhaka"
    },
    "to": {
      "code": "SH",
      "name": "Shanghai"
    },
    "flying_time": "4H 20M",
    "date": "10 MAY",
    "departure_time": "09:00 PM",
    "number": "35"
  },
];

List<Map<String, dynamic>> hotelList = [
  {
    "image": AppMedia.hotelRoom1,
    "place": "Open Space",
    "destination": "London",
    "price": 25
  },
  {
    "image": AppMedia.cityView1,
    "place": "Global Will",
    "destination": "London",
    "price": 40
  },
  {
    "image": AppMedia.poolView1,
    "place": "Best City Pool",
    "destination": "Dubai",
    "price": 68
  },
];