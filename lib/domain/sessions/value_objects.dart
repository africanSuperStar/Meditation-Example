import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import 'package:ubunye_method/domain/core/failures.dart';
import 'package:ubunye_method/domain/core/value_objects.dart';
import 'package:ubunye_method/domain/core/value_validators.dart';

@HiveType(typeId: 1)
class AudioUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @HiveField(0)
  final String url;

  @HiveField(1)
  final bool isLocal;

  factory AudioUrl(String url, bool isLocal) {
    if (isLocal) {
      return AudioUrl._(
        validateLocalUrl(url),
        url,
        isLocal,
      );
    } else {
      return AudioUrl._(
        validateUrl(url),
        url,
        isLocal,
      );
    }
  }

  AudioUrl._(this.value, this.url, this.isLocal);
}

@HiveType(typeId: 2)
class ValidString extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @HiveField(0)
  final String input;

  factory ValidString(String input) {
    return ValidString._(
      isNotEmpty(input),
      input,
    );
  }

  const ValidString._(this.value, this.input);
}

@HiveType(typeId: 3)
class BackgroundUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @HiveField(0)
  final String url;

  @HiveField(1)
  final bool isLocal;

  factory BackgroundUrl(String url, bool isLocal) {
    if (isLocal) {
      return BackgroundUrl._(
        validateLocalUrl(url),
        url,
        isLocal,
      );
    } else {
      return BackgroundUrl._(
        validateUrl(url),
        url,
        isLocal,
      );
    }
  }

  BackgroundUrl._(this.value, this.url, this.isLocal);
}

@HiveType(typeId: 4)
class ValidThumbnail extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const validThumbnails = [
    'big-blue-flower',
    'blue-dove',
    'blue-flower',
    'bright-flower-two',
    'bright-flower',
    'citylights-mountain',
    'crane-flying-woods',
    'crane-on-peak',
    'crane-tattoo',
    'fern-left',
    'fern-right',
    'fire-flies',
    'flowers-bunch-five',
    'flowers-bunch-four',
    'flowers-bunch-three',
    'flowers-bunch-two',
    'flowers-bunch',
    'flowers-plant',
    'flying-crane',
    'gazing-to-side',
    'light-moon',
    'light-sky',
    'meditating-city-lights',
    'moon-and-stars',
    'moon-behind-trees',
    'moon',
    'mountain-peak-five',
    'mountain-peak-four',
    'mountain-peak-one',
    'mountain-peak-six',
    'mountain-peak-three',
    'mountain-peak-two',
    'orange-flower-two',
    'orange-flower',
    'praying-woman-two',
    'praying-woman',
    'reflective-water',
    'ripples-in-water',
    'shooting-star',
    'sitting-crane',
    'sitting-person',
    'tree-silhouette-two',
    'tree-silhouette',
  ];

  @HiveField(0)
  final String input;

  factory ValidThumbnail(String input) {
    if (input.isEmpty) return ValidThumbnail('flowers-bunch');
    return ValidThumbnail._(
      validateIcons(validThumbnails, input),
      input,
    );
  }

  const ValidThumbnail._(this.value, this.input);
}

@HiveType(typeId: 12)
class VideoUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @HiveField(0)
  final String url;

  @HiveField(1)
  final bool isLocal;

  factory VideoUrl(String url, bool isLocal) {
    if (isLocal) {
      return VideoUrl._(
        validateLocalUrl(url),
        url,
        isLocal,
      );
    } else {
      return VideoUrl._(
        validateUrl(url),
        url,
        isLocal,
      );
    }
  }

  VideoUrl._(this.value, this.url, this.isLocal);
}

@HiveType(typeId: 15)
class Premium {
  @HiveField(0)
  final bool isPremium;

  factory Premium(bool isPremium) {
    return Premium._(
      isPremium,
    );
  }

  const Premium._(this.isPremium);
}
