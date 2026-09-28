import 'package:hive/hive.dart';

part 'hive2_model_class.g.dart';// Required for generating the adapter
 
@HiveType(typeId: 0)
class Person {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  Person({required this.name, required this.age});
}
