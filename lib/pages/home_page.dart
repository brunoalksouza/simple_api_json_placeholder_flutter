import 'package:flutter/material.dart';
import 'package:simple_api_json_placeholder_flutter/controllers/home_controller.dart';
import 'package:simple_api_json_placeholder_flutter/models/post_model.dart';
import 'package:simple_api_json_placeholder_flutter/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(list[index].title),
                  subtitle: Text(list[index].body),
                );
              },
            );
          },
        ));
  }
}
