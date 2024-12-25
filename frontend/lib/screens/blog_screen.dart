import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/blog_provider.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final blogProvider = Provider.of<BlogProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Blog')),
      body: ListView.builder(
        itemCount: blogProvider.posts.length,
        itemBuilder: (context, index) {
          final post = blogProvider.posts[index];
          return ListTile(
            title: Text(post["title"]!),
            subtitle: Text(post["content"]!),
          );
        },
      ),
    );
  }
}
