
import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  int id;
  String name;
  String username;
  String email;
  String website;


  PostModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.website,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    id: json["id"] ?? '',
    name: json["name"] ?? '',
    username: json["username"] ?? '',
    email: json["email"] ?? '',
    website: json["website"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "website": website,
  };
}

