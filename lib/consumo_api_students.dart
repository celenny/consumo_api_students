import 'package:consumo_api_students/repositories/student_repository.dart';

Future<void> main() async {
  final studentRepository = StudentRepository();

  final students = await studentRepository.findAll();

  print(students);

  final student = await studentRepository.findId(1);

  print(student);
}
