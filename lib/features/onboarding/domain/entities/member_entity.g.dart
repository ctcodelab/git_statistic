// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MemberEntityAdapter extends TypeAdapter<MemberEntity> {
  @override
  final int typeId = 1;

  @override
  MemberEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MemberEntity(
      id: fields[0] as int,
      avatarUrl: fields[1] as String?,
      name: fields[2] as String,
      state: fields[3] as String,
      username: fields[4] as String,
      sharedWith: (fields[5] as List).cast<SharedMemberEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, MemberEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.avatarUrl)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.state)
      ..writeByte(4)
      ..write(obj.username)
      ..writeByte(5)
      ..write(obj.sharedWith);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
