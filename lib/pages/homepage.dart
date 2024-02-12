import 'package:blog_app_frontend/pages/menupage.dart';
import 'package:blog_app_frontend/pages/signup.dart';
import 'package:blog_app_frontend/services/userservice.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  void SendValue()async
  {
    final response=await BlogApiService().LoginAPI(email.text, password.text);
    if(response["status"]=="success")
      {
        String userId=response["userdata"]["_id"].toString();  //for getting corresponsing user's id.setting value to shared preferance.
        print("Successfully Logged In"+userId);
        SharedPreferences preferences=await SharedPreferences.getInstance();   //setting shared preference
        preferences.setString("userId", userId);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()));
      }
    else if(response["status"]=="Incorrect email id")
      {
        print("Incorrect email id");
      }
    else
      {
        print("Invalid password");
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Container(padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
        controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email id"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
    controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password"
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 190,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                  onPressed: SendValue,
                  child: Text("Login")),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 190,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                  onPressed: ()
                  {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));

                  },
                  child: Text("New user ? Click here...")),
            )
          ],
        ),
      ),
    );
  }
}
