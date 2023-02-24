class QuranModel {
  int? surahNumber;
  int? verseNumber;
  String? content;

  QuranModel.fromJson(dynamic json) {
    surahNumber = json['surah_number'];
    verseNumber = json['verse_number'];
    content = json['content'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['surah_number'] = surahNumber;
    map['verse_number'] = verseNumber;
    map['content'] = content;
    return map;
  }

}