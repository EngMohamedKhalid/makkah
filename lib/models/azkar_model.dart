// ignore_for_file: non_constant_identifier_names

class AzkarModel {
  int? section_id;
  String? count;
  String? description;
  String? reference;
  String? content;

  AzkarModel.fromJson(dynamic json) {
    section_id = json['section_id'];
    count = json['count'];
    description = json['description'];
    reference = json['reference'];
    content = json['content'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['section_id'] = section_id;
    map['content'] = count;
    map['description'] = description;
    map['reference'] = reference;
    map['content'] = content;
    return map;
  }

}