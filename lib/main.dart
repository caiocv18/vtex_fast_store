import 'package:flutter/material.dart';
import 'package:vtex_fast_store/pages/page_markdown.dart';

import 'components/side_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTEX - Fast Store',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'VTEX - Fast Store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String markdownPage = "markdown/home.md";

  void _changePage({required String newPage}) {
    Navigator.of(context).pop();
    setState(() {
      markdownPage = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: SideMenu(changePage: _changePage),
        body: PageMarkdown(markdownPage: markdownPage));
  }
}
