// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: non_constant_identifier_names

class PostModel {
  String? id;
  String? title;
  String? body;

  PostModel({
    this.id,
    this.title,
    this.body,
  });

  PostModel copyWith({
    String? id,
    String? title,
    String? body,
  }) {
    return PostModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': title,
      'first_name': body,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] != null ? "${map['id']}" : null,
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return '$id*///*$title*///*$body)';
  }

  factory PostModel.fromString(String modelString) {
    final regExp = modelString.split('*///*');
    return PostModel(
      id: regExp[0],
      title: regExp[1],
      body : regExp[2],

    );
  }

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    title.hashCode ^
    body.hashCode;
  }
}