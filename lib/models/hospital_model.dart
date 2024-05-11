class Hospital {
  String name;
  Address address;
  Contact contact;
  List<String> specialties;
  double ratings;
  double distance;
  Map<String, String> opening_hours;
  String website;
  List<String> facilities;

  Hospital(
      {required this.name,
      required this.address,
      required this.contact,
      required this.specialties,
      required this.ratings,
      required this.distance,
      required this.opening_hours,
      required this.website,
      required this.facilities});

  factory Hospital.fromJson(Map<String, dynamic> json) {
    return Hospital(
        name: json['name'],
        address: Address.fromJson(json['address']),
        contact: Contact.fromJson(json['contact']),
        specialties: List<String>.from(json['specialties']),
        ratings: json['ratings'],
        distance: json['distance'],
        opening_hours: Map<String, String>.from(json['opening_hours']),
        website: json['website'],
        facilities: List<String>.from(json['facilities']));
  }
}

class Address {
  String street;
  String city;
  String state;
  String zipcode;
  Address(
      {required this.street,
      required this.city,
      required this.state,
      required this.zipcode});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        street: json['street'],
        city: json['city'],
        state: json['state'],
        zipcode: json['zipcode']);
  }
}

class Contact {
  String phone;
  String email;
  Contact({required this.phone, required this.email});
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(phone: json['phone'], email: json['email']);
  }
}
