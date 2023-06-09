import 'dart:convert';
import 'city.dart';
import 'telephone.dart';

class Address {
  String street;
  String number;
  String zipCode;
  City city;
  Telephone telephone;

  Address({
    required this.street,
    required this.number,
    required this.zipCode,
    required this.city,
    required this.telephone,
  });

  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'number': number,
      'zipCode': zipCode,
      'city': city.toMap(),
      'telephone': telephone.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['street'] ?? '',
      number: map['number'] ?? '',
      zipCode: map['zipCode'] ?? '', 
      city: City.fromMap(map['city'] ?? <String, dynamic>{}),
      telephone: Telephone.fromMap(map['telephone'] ?? <String, dynamic>{}),
    );
  }

  factory Address.fromJson(String json) => Address.fromMap(jsonDecode(json));
}
