

import 'package:hive_flutter/adapters.dart';
part 'hive_mine_model.g.dart';

@HiveType(typeId: 0)
class Persons{
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;
  Persons({required this.name,required this.age});


}