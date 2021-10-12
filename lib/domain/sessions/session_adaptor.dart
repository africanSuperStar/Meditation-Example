import 'package:hive/hive.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/domain/sessions/value_objects.dart';

class SessionAdapter extends TypeAdapter<Session> {
  @override
  final int typeId = 8;

  @override
  Session read(BinaryReader reader) {
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
      return Session(
        id: fields[0] as UniqueId?,
        title: fields[1] as ValidString?,
        description: fields[2] as ValidString?,
        tag: fields[3] as ValidString?,
        category: fields[4] as UniqueId?,
        position: fields[5] as int?,
        premium: fields[6] as bool?,
        feedback: fields[7] as bool?,
        duration: fields[8] as Duration?,
        thumbnail: fields[9] as ValidThumbnail?,
        background: fields[10] as BackgroundUrl?,
        deleted: fields[11] as bool?,
        hidden: fields[12] as bool?,
        musicDuration: fields[13] as Duration?,
        currentStandardVersion: fields[14] as int?,
        currentMusicVersion: fields[15] as int?,
      );
    } catch (error) {
      return Session.empty();
    }
  }

  @override
  void write(BinaryWriter writer, Session obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.tag)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.position)
      ..writeByte(6)
      ..write(obj.premium)
      ..writeByte(7)
      ..write(obj.feedback)
      ..writeByte(8)
      ..write(obj.duration)
      ..writeByte(9)
      ..write(obj.thumbnail)
      ..writeByte(10)
      ..write(obj.background)
      ..writeByte(11)
      ..write(obj.deleted)
      ..writeByte(12)
      ..write(obj.hidden)
      ..writeByte(13)
      ..write(obj.musicDuration)
      ..writeByte(14)
      ..write(obj.currentStandardVersion)
      ..writeByte(15)
      ..write(obj.currentMusicVersion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SessionAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
