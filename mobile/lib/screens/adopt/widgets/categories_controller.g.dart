// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesController on _CategoriesControllerBase, Store {
  final _$dogPressedAtom = Atom(name: '_CategoriesControllerBase.dogPressed');

  @override
  bool get dogPressed {
    _$dogPressedAtom.context.enforceReadPolicy(_$dogPressedAtom);
    _$dogPressedAtom.reportObserved();
    return super.dogPressed;
  }

  @override
  set dogPressed(bool value) {
    _$dogPressedAtom.context.conditionallyRunInAction(() {
      super.dogPressed = value;
      _$dogPressedAtom.reportChanged();
    }, _$dogPressedAtom, name: '${_$dogPressedAtom.name}_set');
  }

  final _$catPressedAtom = Atom(name: '_CategoriesControllerBase.catPressed');

  @override
  bool get catPressed {
    _$catPressedAtom.context.enforceReadPolicy(_$catPressedAtom);
    _$catPressedAtom.reportObserved();
    return super.catPressed;
  }

  @override
  set catPressed(bool value) {
    _$catPressedAtom.context.conditionallyRunInAction(() {
      super.catPressed = value;
      _$catPressedAtom.reportChanged();
    }, _$catPressedAtom, name: '${_$catPressedAtom.name}_set');
  }

  final _$_CategoriesControllerBaseActionController =
      ActionController(name: '_CategoriesControllerBase');

  @override
  void pressDogButton() {
    final _$actionInfo =
        _$_CategoriesControllerBaseActionController.startAction();
    try {
      return super.pressDogButton();
    } finally {
      _$_CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pressCatButton() {
    final _$actionInfo =
        _$_CategoriesControllerBaseActionController.startAction();
    try {
      return super.pressCatButton();
    } finally {
      _$_CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
