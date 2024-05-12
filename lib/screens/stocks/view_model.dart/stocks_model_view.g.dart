// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_model_view.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StocksModelView on _StocksModelViewBase, Store {
  late final _$stocksDataAtom =
      Atom(name: '_StocksModelViewBase.stocksData', context: context);

  @override
  List<List<dynamic>> get stocksData {
    _$stocksDataAtom.reportRead();
    return super.stocksData;
  }

  @override
  set stocksData(List<List<dynamic>> value) {
    _$stocksDataAtom.reportWrite(value, super.stocksData, () {
      super.stocksData = value;
    });
  }

  late final _$loadDatasAsyncAction =
      AsyncAction('_StocksModelViewBase.loadDatas', context: context);

  @override
  Future<void> loadDatas() {
    return _$loadDatasAsyncAction.run(() => super.loadDatas());
  }

  @override
  String toString() {
    return '''
stocksData: ${stocksData}
    ''';
  }
}
