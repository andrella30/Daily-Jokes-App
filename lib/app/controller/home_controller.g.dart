// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<JokeModel?>? _$jokesComputed;

  @override
  JokeModel? get jokes =>
      (_$jokesComputed ??= Computed<JokeModel?>(() => super.jokes,
              name: '_HomeControllerBase.jokes'))
          .value;

  final _$_jokesAtom = Atom(name: '_HomeControllerBase._jokes');

  @override
  JokeModel? get _jokes {
    _$_jokesAtom.reportRead();
    return super._jokes;
  }

  @override
  set _jokes(JokeModel? value) {
    _$_jokesAtom.reportWrite(value, super._jokes, () {
      super._jokes = value;
    });
  }

  final _$defineCategoryAtom = Atom(name: '_HomeControllerBase.defineCategory');

  @override
  String? get defineCategory {
    _$defineCategoryAtom.reportRead();
    return super.defineCategory;
  }

  @override
  set defineCategory(String? value) {
    _$defineCategoryAtom.reportWrite(value, super.defineCategory, () {
      super.defineCategory = value;
    });
  }

  final _$indexAtom = Atom(name: '_HomeControllerBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic loadJoke(String? value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.loadJoke');
    try {
      return super.loadJoke(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
defineCategory: ${defineCategory},
index: ${index},
jokes: ${jokes}
    ''';
  }
}
