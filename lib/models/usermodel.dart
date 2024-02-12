// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  String? name;
  String? age;
  String? mobno;
  String? address;
  String? pincode;
  String? email;
  String? password;

  Users({
    this.name,
    this.age,
    this.mobno,
    this.address,
    this.pincode,
    this.email,
    this.password,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    name: json["name"],
    age: json["age"],
    mobno: json["mobno"],
    address: json["address"],
    pincode: json["pincode"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "mobno": mobno,
    "address": address,
    "pincode": pincode,
    "email": email,
    "password": password,
  };
}
