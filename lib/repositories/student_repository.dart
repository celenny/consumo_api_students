import 'dart:convert';
import '../models/student.dart';
import 'package:http/http.dart' as http;

class StudentRepository {
  Future<List<Student>> findAll() async {
    final studentResponse =
        await http.get(Uri.parse('http://localhost:8080/students'));

    final studentList = jsonDecode(studentResponse.body);

    return studentList
        .map<Student>((studentMap) => Student.fromMap(studentMap))
        .toList();
  }

  Future<Student> findId(int id) async {
    final studentResponse =
        await http.get(Uri.parse('http://localhost:8080/students/$id'));

    return Student.fromJson(studentResponse.body);
  }
}
