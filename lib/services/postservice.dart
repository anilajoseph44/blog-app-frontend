import 'dart:convert';

import 'package:http/http.dart' as http;

class PostApiService
{
  Future<dynamic>addPost(String userId,String post)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.83.62:3001/api/post/add");
    var response=await client.post(apiurl,
      headers: <String,String>{
      "Content-Type":"application/json; charset=UTF-8"
      },
      body: jsonEncode(<String,String>
      {

          "userid":userId,
          "post":post


      })
    );
    if(response.statusCode==200)
      {

        return json.decode(response.body);

      }
    else
      {
        throw Exception("Error while posting");
      }

  }
}