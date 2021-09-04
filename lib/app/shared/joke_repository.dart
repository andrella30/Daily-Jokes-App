import 'dart:convert';

import 'package:daily_jokes/app/model/joke_model.dart';
import 'package:http/http.dart' as http;

class JokeRepository {
  Future<JokeModel?> fetchSingleJoke(String type) async {
    var url = "https://v2.jokeapi.dev/joke/$type?type=single";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var decodeJson = jsonDecode(response.body);
        return JokeModel.fromJson(decodeJson);
      } else {
        print("Erro ao carregar" + response.statusCode.toString());
        return null;
      }
    } catch (error, stacktrace) {
      print("Erro ao carregar" + stacktrace.toString());
      return null;
    }
  }
}
