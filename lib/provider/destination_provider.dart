import 'package:flutter/material.dart';
import 'package:tourism/models/destination.dart';

class Destinations with ChangeNotifier {
  List<Destination> _popularDestination = [
    Destination(
        id: "Kathmandu",
        imageURL:
            "https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/images/methode/2019/02/06/3a21faa6-2052-11e9-9b66-f8d7b487d426_image_hires_164133.jpg?itok=3EEBUQFT&v=1549442505",
        popular: "Heritage Sites",
        description:
            "Founded in a vast valley after draining a large lake, legends abound in this remarkable city and every street  has a shrine or two. Kathmandu is an incredibly diverse, historic city with amazing architecture, exquisite wood carvings and metal craft which showcase the skills of the Newar artisans of centuries ago. Hinduism and Buddhism have co-existed in Kathmandu valley from time immemorial and the valley residents make little distinction as they worship in both Hindu and Buddhist shrines.\n Kathmandu is a city where ancient traditions are zealously guarded while at the same time embracing modern technology. The grandeur of the past enchants the visitor whose gaze may linger on an exquisitely carved wooden window frame, an 18th century bronze sculpture or a spiritually uplifting stupa. Kathmandu, the largest city of Nepal, is the political as well as cultural capital of the country, where Nepalis have arrived from all corners of the country and assimilated. "),
    Destination(
        id: "Pokhara",
        imageURL:
            "https://www.liberaldictionary.com/wp-content/uploads/2019/02/kathmandu-3968.jpg",
        popular: "Lakes and Paragliding",
        description:
            "Pokhara is Nepal's number 1 adventure and leisure destination, a gateway to treks in the Annapurna region with plenty of entertainment for individual travellers and their families. In Pokhara you can experience the excitement of adventure: boating, hiking, pony rides, paragliding, bungee, zipline or simply relaxing at one of the several lakes in the valley. \n Pokhara will overwhelm you with its natural beauty and great photo ops. Walk along the shores of the Fewa Lake, enjoy the greenery surrounding you and gaze at the spectacular panoramic view of the Himalayan peaks of the Annapurna Massif. Brightly painted wooden boats add vibrant colors to the greenery, while paragliders float down slowly from above. Flying over the lake is probably going to be one of the highlights of your travel experience in Nepal."),
    Destination(
        id: "Lumbini",
        imageURL:
            "https://transporthubnepal.com/wp-content/uploads/2020/02/lumbini.jpg",
        popular: "Gautam Buddha Birth Place",
        description:
            "Lumbini is the Buddha's birthplace, one of the world's most important spiritual sites and attracts Buddhist pilgrims from around the world. Today you can visit over twenty-five Buddhist monasteries built by diverse countries from Vietnam to France, study Buddhism, meditate and visit the birthplace within the sacred Mayadevi Gardens.\n Mayadevi Temple is the most sacred site in the Lumbini Garden where archaeologists have identified the exact spot where Lord Buddha was born. Inscriptions on the Ashoka Pillar nearby also refer to the spot as his birthplace. It is said that the newly born Prince Siddhartha (later became the Buddha) took his first seven steps and delivered his peace message to humanity here."),
    Destination(
        id: "Mustang",
        imageURL:
            "https://www.enepaltreks.com/wp-content/uploads/2018/04/umustang.jpg",
        popular: "Himalayas and Trekking",
        description:
            "To trek in Upper Mustang is a rare privilege. Here you will experience a way of life of true mountain people, who for hundreds of years, had very little contact with the rest of Nepal and retained their rich cultural heritage. Until recent times their king was officially recognized by the Government of Nepal.\n In many ways, a trek into Upper Mustang is similar to trekking in Tibet, as geographically it is a part of the Tibetan plateau. The district of Mustang was, until 1950, a separate kingdom within the boundaries of Nepal. The last king, the Raja of Mustang, still has his home in the ancient capital known as Lo Manthang."),
  ];
  List<Destination> get popularDestination {
    return [..._popularDestination];
  }

  Destination findPopularDestinationById(String id) {
    return _popularDestination
        .firstWhere((destination) => destination.id == id);
  }

  List<Destination> _otherDestination = [
    Destination(
        id: "Kathmandu",
        imageURL:
            "https://cdn1.i-scmp.com/sites/default/files/styles/768x768/public/images/methode/2019/02/06/3a21faa6-2052-11e9-9b66-f8d7b487d426_image_hires_164133.jpg?itok=3EEBUQFT&v=1549442505",
        popular: "Heritage Sites"),
    Destination(
        id: "Pokhara",
        imageURL:
            "https://www.liberaldictionary.com/wp-content/uploads/2019/02/kathmandu-3968.jpg",
        popular: "Lakes and Paragliding"),
    Destination(
        id: "Lumbini",
        imageURL:
            "https://transporthubnepal.com/wp-content/uploads/2020/02/lumbini.jpg",
        popular: "Gautam Buddha Birth Place"),
    Destination(
        id: "Mustang",
        imageURL:
            "https://www.enepaltreks.com/wp-content/uploads/2018/04/umustang.jpg",
        popular: "Himalayas and Trekking"),
  ];
  List<Destination> get otherDestination {
    return [..._otherDestination];
  }

  Destination findPOtherDestinationById(String id) {
    return _otherDestination.firstWhere((hotel) => hotel.id == id);
  }
}
