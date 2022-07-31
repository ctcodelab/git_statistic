// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_member_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SharedMemberEntityAdapter extends TypeAdapter<SharedMemberEntity> {
  @override
  final int typeId = 2;

  @override
  SharedMemberEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SharedMemberEntity(
      name: fields[0] as String,
      id: fields[2] as int,
      recognitionKey: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SharedMemberEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.recognitionKey)
      ..writeByte(2)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SharedMemberEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
