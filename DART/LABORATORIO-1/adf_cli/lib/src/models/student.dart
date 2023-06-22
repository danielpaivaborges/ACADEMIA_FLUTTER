import 'dart:convert';
import 'package:adf_cli/src/models/address.dart';
import 'package:adf_cli/src/models/course.dart';

class Student {
  final int? id;
  final String name;
  final int? age;
  final List<String> nameCourses;
  final List<Course> courses;
  final Address address;

  Student({
    this.id,
    required this.name,
    this.age,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });

  @override
  String toString() {
    return 'Aluno: $name';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'nameCourses': nameCourses,
      'courses': courses.map((x) => x.toMap()).toList(),
      'address': address.toMap(),
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      age: map['age'] != null ? map['age'] as int : null,
      nameCourses: List<String>.from(
        (map['nameCourses'] ?? <String>[]),
      ),
      courses: List<Course>.from(
        (map['courses'] as List<int>).map<Course>(
          (x) => Course.fromMap(x as Map<String, dynamic>),
        ),
      ),
      address: Address.fromMap(map['address'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source) as Map<String, dynamic>);
}
