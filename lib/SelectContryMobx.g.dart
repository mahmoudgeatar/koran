// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SelectContryMobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectContryController on SelectContryMobx, Store {
  final _$searchAtom = Atom(name: 'SelectContryMobx.search');

  @override
  TextEditingController get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(TextEditingController value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  final _$indexAtom = Atom(name: 'SelectContryMobx.index');

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

  final _$textAtom = Atom(name: 'SelectContryMobx.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$keywordAtom = Atom(name: 'SelectContryMobx.keyword');

  @override
  String get keyword {
    _$keywordAtom.reportRead();
    return super.keyword;
  }

  @override
  set keyword(String value) {
    _$keywordAtom.reportWrite(value, super.keyword, () {
      super.keyword = value;
    });
  }

  final _$onChangeAtom = Atom(name: 'SelectContryMobx.onChange');

  @override
  bool get onChange {
    _$onChangeAtom.reportRead();
    return super.onChange;
  }

  @override
  set onChange(bool value) {
    _$onChangeAtom.reportWrite(value, super.onChange, () {
      super.onChange = value;
    });
  }

  final _$SelectContryMobxActionController =
      ActionController(name: 'SelectContryMobx');

  @override
  void onSelect(int index) {
    final _$actionInfo = _$SelectContryMobxActionController.startAction(
        name: 'SelectContryMobx.onSelect');
    try {
      return super.onSelect(index);
    } finally {
      _$SelectContryMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChanged(dynamic _, {BuildContext context}) {
    final _$actionInfo = _$SelectContryMobxActionController.startAction(
        name: 'SelectContryMobx.onChanged');
    try {
      return super.onChanged(_, context: context);
    } finally {
      _$SelectContryMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$SelectContryMobxActionController.startAction(
        name: 'SelectContryMobx.clear');
    try {
      return super.clear();
    } finally {
      _$SelectContryMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
index: ${index},
text: ${text},
keyword: ${keyword},
onChange: ${onChange}
    ''';
  }
}
