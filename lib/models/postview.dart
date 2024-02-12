// To parse this JSON data, do
//
//     final postView = postViewFromJson(jsonString);

import 'dart:convert';

List<PostView> postViewFromJson(String str) => List<PostView>.from(json.decode(str).map((x) => PostView.fromJson(x)));

String postViewToJson(List<PostView> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostView {
  String id;
  Userid userid;
  String post;
  DateTime postedDate;

  PostView({
    required this.id,
    required this.userid,
    required this.post,
    required this.postedDate,
  });

  factory PostView.fromJson(Map<String, dynamic> json) => PostView(
    id: json["_id"],
    userid: Userid.fromJson(json["userid"]),
    post: json["post"],
    postedDate: DateTime.parse(json["postedDate"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "userid": userid.toJson(),
    "post": post,
    "postedDate": postedDate.toIso8601String(),
  };
}

class Userid {
  String name;
  String age;
  String mobno;
  String address;
  String pincode;

  Userid({
    required this.name,
    required this.age,
    required this.mobno,
    required this.address,
    required this.pincode,
  });

  factory Userid.fromJson(Map<String, dynamic> json) => Userid(
    name: json["name"],
    age: json["age"],
    mobno: json["mobno"],
    address: json["address"],
    pincode: json["pincode"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "mobno": mobno,
    "address": address,
    "pincode": pincode,
  };
}
