class SurahDetailsModel {
  String? surahName;
  String? surahNameArabic;
  String? surahNameArabicLong;
  String? surahNameTranslation;
  String? revelationPlace;
  int? totalAyah;
  int? surahNo;
  Audio? audio;
  List<String>? english;
  List<String>? arabic1;
  List<String>? arabic2;
  List<String>? bengali;
  List<String>? urdu;

  SurahDetailsModel({
    this.surahName,
    this.surahNameArabic,
    this.surahNameArabicLong,
    this.surahNameTranslation,
    this.revelationPlace,
    this.totalAyah,
    this.surahNo,
    this.audio,
    this.english,
    this.arabic1,
    this.arabic2,
    this.bengali,
    this.urdu,
  });

  factory SurahDetailsModel.fromJson(Map<String, dynamic> json) {
    return SurahDetailsModel(
      surahName: json['surahName'],
      surahNameArabic: json['surahNameArabic'],
      surahNameArabicLong: json['surahNameArabicLong'],
      surahNameTranslation: json['surahNameTranslation'],
      revelationPlace: json['revelationPlace'],
      totalAyah: json['totalAyah'],
      surahNo: json['surahNo'],
      audio: json['audio'] != null ? Audio.fromJson(json['audio']) : null,
      english: List<String>.from(json['english']),
      arabic1: List<String>.from(json['arabic1']),
      arabic2: List<String>.from(json['arabic2']),
      bengali: List<String>.from(json['bengali']),
      urdu: List<String>.from(json['urdu']),
    );
  }
}

class Audio {
  Recitation? r1;
  Recitation? r2;
  Recitation? r3;
  Recitation? r4;
  Recitation? r5;

  Audio({this.r1, this.r2, this.r3, this.r4, this.r5});

  factory Audio.fromJson(Map<String, dynamic> json) {
    return Audio(
      r1: json['1'] != null ? Recitation.fromJson(json['1']) : null,
      r2: json['2'] != null ? Recitation.fromJson(json['2']) : null,
      r3: json['3'] != null ? Recitation.fromJson(json['3']) : null,
      r4: json['4'] != null ? Recitation.fromJson(json['4']) : null,
      r5: json['5'] != null ? Recitation.fromJson(json['5']) : null,
    );
  }
}

class Recitation {
  String? reciter;
  String? url;
  String? originalUrl;

  Recitation({this.reciter, this.url, this.originalUrl});

  factory Recitation.fromJson(Map<String, dynamic> json) {
    return Recitation(
      reciter: json['reciter'],
      url: json['url'],
      originalUrl: json['originalUrl'],
    );
  }
}
