import 'package:simple_api_json_placeholder_flutter/models/post_model.dart';

abstract class HomeRepository {

  Future<List<PostModel>> getList();

  


}