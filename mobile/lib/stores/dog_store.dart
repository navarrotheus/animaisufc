import 'dart:convert';

import 'package:animaisufc/models/dog_model.dart';
import 'package:animaisufc/shared/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'dog_store.g.dart';

class DogStore = _DogStoreBase with _$DogStore;

abstract class _DogStoreBase with Store {
  @observable
  List<DogModel> dogs = [];

  @action
  fetchDogsList() {
    getAllDogs().then((dogsList) {
      dogs = dogsList;
    });
  }

  Future<List<DogModel>> getAllDogs() async {
    try {
      List<DogModel> dogs = [];
      final response = await http.get(apiUrl);
      var decodeJson = jsonDecode(response.body);
      for (var json in decodeJson as List) {
        DogModel model = DogModel.fromJson(json);
        dogs.add(model);
      }
      return dogs;
    } catch (err) {
      print('Erro');
      return null;
    }
  }
}
