import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'SelectContryMobx.g.dart';

class SelectContryController = SelectContryMobx with _$SelectContryController;

abstract class SelectContryMobx with Store {
  @observable
  TextEditingController search = TextEditingController();
  @observable
  int index = -1;
  @observable
  String text;
  @observable
  String keyword = "";
  @observable
  bool onChange = false;

  @action
  void onSelect(int index) {
    print(index);
    this.index = index;
  }

  @action
  void onChanged(_, {BuildContext context}) {
    keyword = _;
    if (search.text.isNotEmpty) {
      onChange = true;
    } else {
      onChange = false;
    }
  }

  @action
  void clear() {
    search.clear();
    onChange = false;
  }
}
