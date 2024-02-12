import 'package:blog_app_frontend/models/postview.dart';
import 'package:blog_app_frontend/services/postview.dart';
import 'package:flutter/material.dart';

class ViewPost extends StatefulWidget {
  const ViewPost({super.key});

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  Future<List<PostView>>?data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=ViewPostApi().getPosts();
  }
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
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData)
                {
                  return ListView.builder(padding: EdgeInsets.all(15),
                    itemCount: snapshot.data!.length,
                      itemBuilder: (value,index)
                  {
                    return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(snapshot.data![index].userid.name.toString()),
                            subtitle: Text(snapshot.data![index].post.toString()+"\n"+snapshot.data![index].postedDate.toString()),
                          )
                        ],
                      ),
                    );
                  });

                }
              else
                {
                  return Text("Loading...........");
                }
            }),
      ),
    );
  }
}
