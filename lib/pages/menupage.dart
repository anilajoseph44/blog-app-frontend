import 'package:blog_app_frontend/pages/CreatePost.dart';
import 'package:blog_app_frontend/pages/viewpost.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                  onPressed: ()
                  {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePost()));

                  },
                  child: Text("Create Post")),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                  onPressed: ()
                  {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPost()));

                  }, child: Text("View post"))
            ],
          ),
        ),
      ),
    );
  }
}
