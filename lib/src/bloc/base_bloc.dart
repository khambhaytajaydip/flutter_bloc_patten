import 'package:blocpatten/src/model/base_model.dart';
import 'package:blocpatten/src/resorces/repository.dart';
import 'package:rxdart/rxdart.dart';

/// Created by Jai on 24,April,2020

abstract class BaseBloc<T extends BaseModel> {
  final repository = Repository();
  final fetcher = PublishSubject<T>();

  dispose() {
    fetcher.close();
  }
}