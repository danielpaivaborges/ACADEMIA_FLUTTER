import 'dart:convert';
import 'package:adf_cli/src/models/student.dart';
import 'package:http/http.dart' as http;

class StudentRepository {
  Future<List<Student>> findAll() async {
    final studentsResult =
        await http.get(Uri.parse('http://localhost:8080/students'));
    if (studentsResult.statusCode != 200) {
      throw Exception();
    }
    final studentstData = jsonDecode(studentsResult.body) as List;
    return studentstData.map<Student>((student) {
      return Student.fromMap(student);
    }).toList();
  }

  Future<Student> findById(int id) async {
    final studentsResult =
        await http.get(Uri.parse('http://localhost:8080/students/$id'));

    if (studentsResult.statusCode != 200) {
      throw Exception();
    }
    if (studentsResult.body == "{}") {
      throw Exception("Corpo vazio retornado");
    }

    return Student.fromJson(studentsResult.body);
  }

  Future<void> insert(Student student) async {
    final response = await http.post(
        Uri.parse('http://localhost:8080/students'),
        body: student.toJson(),
        headers: {'content-type': 'application/json'});
    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> update(Student student) async {
    final response = await http.put(
        Uri.parse('http://localhost:8080/students/${student.id}'),
        body: student.toJson(),
        headers: {'content-type': 'application/json'});
    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> deleteById(int id) async {
    final response =
        await http.delete(Uri.parse('http://localhost:8080/students/$id'));
    if (response.statusCode != 200) {
      throw Exception();
    }
  }
}
