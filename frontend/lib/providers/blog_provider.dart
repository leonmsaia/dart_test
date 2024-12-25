import 'package:flutter/material.dart';

class BlogProvider with ChangeNotifier {
  List<Map<String, String>> _posts = [
    {"title": "Post 1", "content": "Contenido del Post 1"},
    {"title": "Post 2", "content": "Contenido del Post 2"},
  ];

  List<Map<String, String>> get posts => _posts;

  void addPost(String title, String content) {
    _posts.add({"title": title, "content": content});
    notifyListeners();
  }
}
