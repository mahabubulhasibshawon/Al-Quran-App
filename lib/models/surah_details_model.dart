class SurahDetailsModel {
  String? surahName;
  String? surahNameArabic;
  String? surahNameArabicLong;
  String? surahNameTranslation;
  String? revelationPlace;
  int? totalAyah;
  int? surahNo;
  Audio? audio;
  List<String>? translation;

  SurahDetailsModel({
    this.surahName,
    this.surahNameArabic,
    this.surahNameArabicLong,
    this.surahNameTranslation,
    this.revelationPlace,
    this.totalAyah,
    this.surahNo,
    this.audio,
    this.translation,
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
      translation: json['translation'] != null ? List<String>.from(json['translation']) : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'surahName': surahName,
      'surahNameArabic': surahNameArabic,
      'surahNameArabicLong': surahNameArabicLong,
      'surahNameTranslation': surahNameTranslation,
      'revelationPlace': revelationPlace,
      'totalAyah': totalAyah,
      'surahNo': surahNo,
      'audio': audio?.toJson(),
      'translation': translation,
    };
  }
}

class Audio {
  Map<String, Recitation>? recitations;

  Audio({this.recitations});

  factory Audio.fromJson(Map<String, dynamic> json) {
    Map<String, Recitation> parsed = {};
    json.forEach((key, value) {
      parsed[key] = Recitation.fromJson(value);
    });
    return Audio(recitations: parsed);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    recitations?.forEach((key, value) {
      data[key] = value.toJson();
    });
    return data;
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

  Map<String, dynamic> toJson() {
    return {
      'reciter': reciter,
      'url': url,
      'originalUrl': originalUrl,
    };
  }
}
