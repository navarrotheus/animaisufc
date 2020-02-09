// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DogStore on _DogStoreBase, Store {
  final _$dogsAtom = Atom(name: '_DogStoreBase.dogs');

  @override
  List<DogModel> get dogs {
    _$dogsAtom.context.enforceReadPolicy(_$dogsAtom);
    _$dogsAtom.reportObserved();
    return super.dogs;
  }

  @override
  set dogs(List<DogModel> value) {
    _$dogsAtom.context.conditionallyRunInAction(() {
      super.dogs = value;
      _$dogsAtom.reportChanged();
    }, _$dogsAtom, name: '${_$dogsAtom.name}_set');
  }

  final _$_DogStoreBaseActionController =
      ActionController(name: '_DogStoreBase');

  @override
  dynamic fetchDogsList() {
    final _$actionInfo = _$_DogStoreBaseActionController.startAction();
    try {
      return super.fetchDogsList();
    } finally {
      _$_DogStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
