import 'package:MIDownload/model/ApiModel.dart';
import 'package:MIDownload/repository/apiRepository.dart';
import 'package:flutter/material.dart';

class PostsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PostsWidgetState();
  }
}

class PostsWidgetState extends State<PostsWidget> {
  final ApiRepository _apiRepository = ApiRepository();
  late Future<List<ApiModel>> _post = _apiRepository.getDatas();

  @override
  void initState() {
    super.initState();
    _post = _apiRepository.getDatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Posts"),
          centerTitle: true,
        ),
        body: FutureBuilder<List<ApiModel>>(
          future: _post,
          builder: (ctx, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (ctx, index) {
                      var post = snapshot.data![index];
                      return ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.body),
                      );
                    },
                  );
          },
        ));
  }
}
