import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PageMarkdown extends StatelessWidget {
  final String markdownPage;

  const PageMarkdown({super.key, required this.markdownPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(markdownPage),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(300, 0, 300, 0),
        child: FutureBuilder(
            future: rootBundle.loadString(markdownPage),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Markdown(data: snapshot.data.toString());
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
