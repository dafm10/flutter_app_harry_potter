import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_app_harry_potter/models/characters_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  Future<List<CharactersModel>> getCharacters(String house) async {
    try {
      List<CharactersModel> characters = [];
      String path = "http://hp-api.herokuapp.com/api/characters/house/$house";
      Uri _uri = Uri.parse(path);
      http.Response response = await http.get(_uri);
      //print(response.body);
      if (response.statusCode == 200) {
        String source = Utf8Decoder().convert(response.bodyBytes);
        List myList = json.decode(source);
        characters = myList.map((e) => CharactersModel.fromJson(e)).toList();
        //print(characters);
        return characters;
      }
      return characters;
    } on TimeoutException catch (e) {
      return Future.error("Error internet 1");
    } on SocketException catch (e) {
      return Future.error("Error internet 2");
    } on Error catch (e) {
      return Future.error("Error internet 3");
    }
  }
}
