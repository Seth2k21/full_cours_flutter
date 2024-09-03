// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: non_constant_identifier_names

class UserModel {
  String? id;
  String? username;
  String? zipcode;
  String? first_name;
  String? last_name;
  String? email;
  String? date_joined;

  UserModel({
    this.id,
    this.username,
    this.zipcode,
    this.first_name,
    this.last_name,
    this.email,
    this.date_joined,
  });

  UserModel copyWith({
    String? id,
    String? username,
    String? zipcode,
    String? first_name,
    String? last_name,
    String? email,
    String? date_joined,
  }) {
    return UserModel(
      id: id ?? this.id,
      username: username ?? this.username,
      zipcode: zipcode ?? this.zipcode,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      date_joined: date_joined ?? this.date_joined,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'zipcode' : zipcode,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'date_joined': date_joined,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? "${map['id']}" : null,
      username: map['username'] != null ? map['username'] as String : null,
      zipcode: map['zipcode'] != null ? map['zipcode'] as String : null,
      first_name: map['first_name'] != null ? map['first_name'] as String : null,
      last_name: map['last_name'] != null ? map['last_name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      date_joined:
      map['date_joined'] != null ? map['date_joined'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return '$id*///*$username*///*$first_name*///*$last_name*///*$email*///*$date_joined)';
  }

  factory UserModel.fromString(String modelString) {
    final regExp = modelString.split('*///*');
    return UserModel(
      id: regExp[0],
      username: regExp[1],
      zipcode: regExp[2],
      first_name: regExp[3],
      last_name: regExp[4],
      email: regExp[5],
      date_joined: regExp[6],
    );
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.zipcode == zipcode &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email &&
        other.date_joined == date_joined;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    username.hashCode ^
    zipcode.hashCode ^
    first_name.hashCode ^
    last_name.hashCode ^
    email.hashCode ^
    date_joined.hashCode;
  }
}