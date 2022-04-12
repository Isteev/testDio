import 'package:apitest/app/models/CrapModel.dart';
import 'package:dio/dio.dart';

class Api {
  String _url = "https://rickandmortyapi.com/api/character/79";

  Future<ResposeCrap?> GetCrab() async {
    try {
      Response response = await Dio().get(_url);

      return ResposeCrap.fromJson(response.data);
    } catch (e) {}
  }
}
