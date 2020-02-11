// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimalStore on _AnimalStoreBase, Store {
  final _$animalsAtom = Atom(name: '_AnimalStoreBase.animals');

  @override
  List<AnimalModel> get animals {
    _$animalsAtom.context.enforceReadPolicy(_$animalsAtom);
    _$animalsAtom.reportObserved();
    return super.animals;
  }

  @override
  set animals(List<AnimalModel> value) {
    _$animalsAtom.context.conditionallyRunInAction(() {
      super.animals = value;
      _$animalsAtom.reportChanged();
    }, _$animalsAtom, name: '${_$animalsAtom.name}_set');
  }

  final _$_AnimalStoreBaseActionController =
      ActionController(name: '_AnimalStoreBase');

  @override
  dynamic fetchAnimalsList() {
    final _$actionInfo = _$_AnimalStoreBaseActionController.startAction();
    try {
      return super.fetchAnimalsList();
    } finally {
      _$_AnimalStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
