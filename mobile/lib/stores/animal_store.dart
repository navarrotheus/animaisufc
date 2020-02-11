import 'dart:convert';

import 'package:animaisufc/models/animal_model.dart';
import 'package:animaisufc/shared/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'animal_store.g.dart';

class AnimalStore = _AnimalStoreBase with _$AnimalStore;

abstract class _AnimalStoreBase with Store {
  @observable
  List<AnimalModel> animals = [];

  @action
  fetchAnimalsList() {
    getAllAnimals().then((animalsList) {
      animals = animalsList;
    });
  }

  Future<List<AnimalModel>> getAllAnimals() async {
    try {
      List<AnimalModel> animals = [];
      final response = await http.get(apiUrl);
      var decodeJson = jsonDecode(response.body);
      for (var json in decodeJson as List) {
        AnimalModel model = AnimalModel.fromJson(json);
        animals.add(model);
      }
      return animals;
    } catch (err) {
      print('Erro');
      return null;
    }
  }

  Future<List<AnimalModel>> getAllById() async {
    try {
      List<AnimalModel> animals = [];
      final response = await http.get(apiUrl);
      var decodeJson = jsonDecode(response.body);
      for (var json in decodeJson as List) {
        AnimalModel model = AnimalModel.fromJson(json);
        animals.add(model);
      }
      return animals;
    } catch (err) {
      print('Erro');
      return null;
    }
  }
}
