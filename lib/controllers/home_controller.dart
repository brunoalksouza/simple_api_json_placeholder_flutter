import 'package:flutter/material.dart';
import 'package:simple_api_json_placeholder_flutter/models/post_model.dart';
import 'package:simple_api_json_placeholder_flutter/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
  }
}
