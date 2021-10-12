import 'package:hive/hive.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/standard_session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class StandardSessionAdapter extends TypeAdapter<StandardSession> {
  @override
  final int typeId = 14;

  @override
  StandardSession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{};
    for (int i = 0; i < numOfFields; i++) {
      try {
        reader.readByte();
        final value = reader.read();

        fields[i] = value;
      } catch (error) {
        fields[i] = null;
      }
    }

    try {
      return StandardSession(
        id: fields[0] as UniqueId?,
        version: fields[1] as int?,
        standardAudioUrl: fields[8] as AudioUrl?,
        tag: fields[9] as ValidString?,
        localPath: fields[10] as ValidString?,
      );
    } catch (_) {
      return StandardSession.empty();
    }
  }

  @override
  void write(BinaryWriter writer, StandardSession obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.version)
      ..writeByte(8)
      ..write(obj.standardAudioUrl)
      ..writeByte(9)
      ..write(obj.tag)
      ..writeByte(10)
      ..write(obj.localPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StandardSessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
