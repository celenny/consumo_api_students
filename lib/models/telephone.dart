import 'dart:convert';

class Telephone {
  int ddd;
  String telephone;

  Telephone({
    required this.ddd,
    required this.telephone,
  });

  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telephone': telephone,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Telephone.fromMap(Map<String, dynamic> map) {
    return Telephone(
      ddd: map['ddd'] ?? 0,
      telephone: map['telephone'] ?? '',
    );
  }

  factory Telephone.fromJson(String json)  => Telephone.fromMap(jsonDecode(json));
 
}
