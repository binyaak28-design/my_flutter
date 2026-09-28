// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_mine_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonsAdapter extends TypeAdapter<Persons> {
  @override
  final int typeId = 0;

  @override
  Persons read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Persons(
      name: fields[0] as String,
      age: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Persons obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
