import 'dart:convert';

import 'package:demoapi/model/posts_models.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPost() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var reponse = await client.get(uri);
    if (reponse.statusCode == 200) {
      var json = reponse.body;
      return postFromJson(json);
    }
    return null;
  }
}


// class RemoteService {
//   Future<List<Post>> getPostApi() async {
//     print('get');
//     final response =
//         await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       for (Map i in data) {
//         postList.add(Post.fromJson(i as dynamic));
//         print(i.toString());
//       }
//       return postList;
//     } else {
//       return postList;
//     }
//   }
// }
