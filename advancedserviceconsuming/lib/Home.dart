import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'Post.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _baseURL = "https://jsonplaceholder.typicode.com";
  bool error = false;
  Future<List<Post>> _getPosts() async {
    http.Response response = await http.get(_baseURL + "/posts");
    var dadosJson = json.decode(response.body);
    List<Post> posts = <Post>[];
    for (var post in dadosJson)
      {
        Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
        posts.add(p);
      }
    print(posts.toString());
    return posts;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advanced service consuming"),
      ),
      body: FutureBuilder<List<Post>>(
        future: _getPosts(),
        builder: (context, snapshot) {
          String resultado = "O resultado aparecerá aqui";
          switch(snapshot.connectionState)
          {
            case ConnectionState.none:
              print("Connection none");
              break;
            case ConnectionState.waiting:
              Center(child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active:
              print("Connection active");
              break;
            case ConnectionState.done:
              print("Connection done");
              if(snapshot.hasError)
              {
                print("Lista: erro ao carregar!");
                resultado = "Erro ao carregar os dados";
                error = true;
              }else {
                error = false;
              }
              break;
          }
        if (error)
          {
            return Center(child:
              Text("Error during request"),);
          }
        else
          {
            print("List: Loaded!");
            return ListView.builder(itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {

                  List<Post> list = snapshot.data ?? [Post(0, 0, "Sem internet", "Sem internet")];
                  Post post = list[index];

                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.id.toString()),
                  );
                });
          }
        },
      ),
    );
  }
}
