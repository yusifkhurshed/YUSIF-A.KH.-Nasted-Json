//YUSIF A.KH.
class Geo {
  final String lat;
  final String lng;
  Geo({
    required this.lat,
    required this.lng,
  });
  factory Geo.fromJson(Map<String,dynamic>json){
    return Geo(
      lat: json[ 'lat'],
      lng: json['lng'],
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });
  factory Company.fromJson(Map<String,dynamic>json){
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}

class Address {
  final String street;
  final String city;
  final String suite;
  final String zipcode;
  final Geo geo;
  Address({
    required this.street,
    required this.city,
    required this.suite,
    required this.zipcode,
    required this.geo,
  });
  factory Address.fromJson(Map<String,dynamic>json){
    return Address(
      street: json['street'],
      city: json['city'],
      suite: json['suite'],
      zipcode: json['zipcode'],
      geo:Geo.fromJson(json['geo'] as Map<String,dynamic>),
    );
  }
}

class Users {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;
  Users({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });
  factory Users.fromJson(Map<String,dynamic>json){
    return Users(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address:Address.fromJson(json['address'] as Map<String,dynamic>),
      phone: json['phone'],
      website: json['website'],
      company:Company.fromJson(json['company'] as Map<String,dynamic>),
    );
  }
}