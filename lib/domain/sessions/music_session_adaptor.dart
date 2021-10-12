import 'package:hive/hive.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/music_session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class MusicSessionAdapter extends TypeAdapter<MusicSession> {
  @override
  final int typeId = 13;

  @override
  MusicSession read(BinaryReader reader) {
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
      return MusicSession(
        id: fields[0] as UniqueId?,
        version: fields[1] as int?,
        musicAudioUrl: fields[8] as AudioUrl?,
        tag: fields[9] as ValidString?,
        localPath: fields[10] as ValidString?,
      );
    } catch (_) {
      return MusicSession.empty();
    }
  }

  @override
  void write(BinaryWriter writer, MusicSession obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.version)
      ..writeByte(8)
      ..write(obj.musicAudioUrl)
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
      other is MusicSessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
