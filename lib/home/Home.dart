import 'package:MIDownload/home/posts/PostsWidget.dart';
import 'package:MIDownload/repository/apiRepository.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  final ApiRepository repository = ApiRepository();

  HomeApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeAppState();
  }
}

class HomeAppState extends State<HomeApp> {

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    await widget.repository.getDatas();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            style:
                ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
          ),
          centerTitle: true,
          title: const Text(
            "Store App",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          backgroundColor: Colors.green[400],
        ),
        body: PostsWidget()
    );
  }
}
