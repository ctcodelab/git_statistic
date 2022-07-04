// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MembersEntityAdapter extends TypeAdapter<MembersEntity> {
  @override
  final int typeId = 0;

  @override
  MembersEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MembersEntity(
      members: (fields[0] as List).cast<MemberEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, MembersEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.members);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MembersEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
