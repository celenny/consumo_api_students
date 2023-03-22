import 'address.dart';
import 'course.dart';

class Student {
  int id;
  String name;
  int? age;
  List<String> coursesNames;
  List<Course> courses;
  Address address;

  Student({
    required this.id,
    required this.name,
    this.age,
    required this.coursesNames,
    required this.courses,
    required this.address,
  });
}
