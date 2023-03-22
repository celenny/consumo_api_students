import 'city.dart';
import 'telephone.dart';

class Address {
  String street;
  String number;
  String cep;
  City city;
  Telephone telephone;

  Address({
    required this.street,
    required this.number,
    required this.cep,
    required this.city,
    required this.telephone,
  });
}
