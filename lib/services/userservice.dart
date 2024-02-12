import 'dart:convert';

import 'package:blog_app_frontend/models/usermodel.dart';
import 'package:http/http.dart' as http;

class BlogApiService
{
  Future<dynamic>LoginAPI(String email,String password)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.83.62:3001/api/vlog/signin");
    var response=await client.post(apiurl,
    headers: <String,String>{
      "Content-Type":"application/json; charset=UTF-8"
    },
      body: jsonEncode(<String,String>
      {

        "email":email,
        "password":password

      })
    );
    if(response.statusCode==200)
      {
        return json.decode(response.body);

      }
    else
      {
        throw Exception("Failed to login");
      }

  }
  Future<dynamic>SendData(String name,String age,String mobno,String address,String pincode,String email,String password)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.83.62:3001/api/vlog/signup");
    var response=await client.post(apiurl,
    headers: <String,String>{
      "Content-Type":"application/json; charset=UTF-8"

    },
      body: jsonEncode(<String,String>
      {
        "name":name,
        "age":age,
        "mobno":mobno,
        "address":address,
        "pincode":pincode,
        "email":email,
        "password":password
      })
    );
    if(response.statusCode==200)
      {

        return json.decode(response.body);


      }
    else
      {
        throw Exception("Failed to send data");
      }
  }
}