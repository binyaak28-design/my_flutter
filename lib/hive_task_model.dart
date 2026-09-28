
import 'package:hive_flutter/adapters.dart';
part 'hive_task_model.g.dart';

@HiveType(typeId: 0)
class Vehicle{
  @HiveField(0)
String carModel;
@HiveField(1)
String ownerName;
@HiveField(2)
String carNumber;

Vehicle({required this.carModel ,required this.ownerName,required this.carNumber});
}