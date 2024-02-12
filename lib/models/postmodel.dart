// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String? userid;
  String? post;

  Posts({
    this.userid,
    this.post,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    userid: json["userid"],
    post: json["post"],
  );

  Map<String, dynamic> toJson() => {
    "userid": userid,
    "post": post,
  };
}
