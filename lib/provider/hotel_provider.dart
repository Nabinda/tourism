import 'package:flutter/material.dart';
import 'package:tourism/models/hotels.dart';

class HotelProvider with ChangeNotifier {
  List<Hotel> _hotel = [
    Hotel(
        id: "1",
        city: "Kathmandu",
        name: "ABC hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "2",
        city: "Kathmandu",
        name: "FGH hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "3",
        city: "Kathmandu",
        name: "CDE hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "4",
        city: "Pokhara",
        name: "PKR hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "5",
        city: "Pokhara",
        name: "PKR 2 hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "6",
        city: "Lumbini",
        name: "Lumbini 1 hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "7",
        city: "Lumbini",
        name: "Lumbini 2 hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "8",
        city: "Mustang",
        name: "MST hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "9",
        city: "Mustang",
        name: "PKR hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
    Hotel(
        id: "10",
        city: "Mustang",
        name: "PKeeR hotel",
        location: "Buspark",
        imageURL: [
          "https://r-cf.bstatic.com/xdata/images/hotel/270x200/204818224.jpg?k=530485344ef844c4f9e34d8f306bca9405e9d13eed20be11e94a7ab3f8f29c41&o=",
          "https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3333/x_0,y_260,w_5000,h_2812,r_0,c_crop,q_90,fl_progressive/w_900,f_auto,c_fit/mango-hotels---manali/Rooms_In_Manali_,_Mango_Hotels_Manali_,_Comfort_Rooms_4",
          "https://jobrecruitment.net/wp-content/uploads/2019/03/mango-hotel-haridwar.jpg"
        ],
        affordable: Cost.Affordable,
        facilities: [
          "Free Wifi",
          "24 hours service",
          "Clean Environment",
        ],
        contactNo: "+977-98032165498",
        email: "abc@gmail.com",
        isFavourite: false),
  ];

  List<String> getImageURL(String id) {
    final selectedHotel = findByName(id);
    return selectedHotel.imageURL.toList();
  }

  Hotel findByName(String id) {
    return _hotel.firstWhere((hotel) => hotel.id == id);
  }

  List<Hotel> findByLocation(String placeName) {
    return _hotel.where((hotel) => hotel.city == placeName).toList();
  }

  List<Hotel> get favourites {
    return _hotel.where((hotel) => hotel.isFavourite).toList();
  }
}
