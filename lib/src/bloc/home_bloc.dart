import 'package:blocpatten/src/model/bloc_int.dart';
import 'package:flutter/cupertino.dart';

import 'base_bloc.dart';

/// Created by Jai on 24,April,2020

class HomeBloc extends BaseBloc<BlockInt> {
  Stream<BlockInt> get getIncrementData => fetcher.stream;

  incrementValue(int value)  {
    BlockInt int =  BlockInt();
    int.id = value + 1;
    fetcher.sink.add(int);
  }

  @override
  dispose() {
    return super.dispose();
  }
}
final homeBloc = HomeBloc();