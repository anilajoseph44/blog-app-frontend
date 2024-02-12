import 'dart:math';

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController name=new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController mobilenumber=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController pincode=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  TextEditingController confirmpassword=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        body: SingleChildScrollView(
          child: Container(padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "name"
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: age,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "age"
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller:mobilenumber,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile number"
                ),),
                SizedBox(height: 10,),
                TextField(
                  controller: address,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Address"
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: pincode,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Pincode"
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "email"
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
                SizedBox(height: 10,),
                TextField(
                  controller: confirmpassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm password"
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 100,
                  height: 30,
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

                      },
                      child: Text("Register")),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 100,
                  height: 30,
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
                        Navigator.pop(context);
                      },
                      child: Text("Login")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
