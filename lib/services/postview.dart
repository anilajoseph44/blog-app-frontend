import 'package:blog_app_frontend/models/postmodel.dart';
import 'package:blog_app_frontend/models/postview.dart';
import 'package:http/http.dart' as http;

class ViewPostApi
{
Future<List<PostView>>getPosts()async
{
  var client=http.Client();
  var apiurl=Uri.parse("http://192.168.83.62:3001/api/post/viewpost");
  var response=await client.get(apiurl);
  if(response.statusCode==200)
    {

      return postViewFromJson(response.body);

    }
  else
    {
      return[];
    }

}
}