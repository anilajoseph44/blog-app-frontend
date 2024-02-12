import 'package:blog_app_frontend/services/postservice.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  
  TextEditingController post=new TextEditingController();
  
  void SendPostToApi()async
  {
    SharedPreferences prefer=await SharedPreferences.getInstance();
    String userId=prefer.getString("userId")??"";
    print("post is"+post.text);

    final response=await PostApiService().addPost(userId, post.text);
    if(response["status"]=="success")
      {
        print("Successfully posted................");

      }
    else
      {
        print("Error occured...................");
      }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white
            ),
              onPressed: ()
              {
                Navigator.pop(context);
              },
              child: Icon(Icons.backspace_outlined))
        ],),
        body: Container(padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                controller: post,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Type something...."
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  ),
                    onPressed: SendPostToApi, child: Text("Submit")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
