// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsModelView on _NewsModelViewBase, Store {
  late final _$newsAtom =
      Atom(name: '_NewsModelViewBase.news', context: context);

  @override
  List<NewsModel> get news {
    _$newsAtom.reportRead();
    return super.news;
  }

  @override
  set news(List<NewsModel> value) {
    _$newsAtom.reportWrite(value, super.news, () {
      super.news = value;
    });
  }

  late final _$isServiceLoadingAtom =
      Atom(name: '_NewsModelViewBase.isServiceLoading', context: context);

  @override
  bool get isServiceLoading {
    _$isServiceLoadingAtom.reportRead();
    return super.isServiceLoading;
  }

  @override
  set isServiceLoading(bool value) {
    _$isServiceLoadingAtom.reportWrite(value, super.isServiceLoading, () {
      super.isServiceLoading = value;
    });
  }

  late final _$getNewsAsyncAction =
      AsyncAction('_NewsModelViewBase.getNews', context: context);

  @override
  Future<void> getNews() {
    return _$getNewsAsyncAction.run(() => super.getNews());
  }

  @override
  String toString() {
    return '''
news: ${news},
isServiceLoading: ${isServiceLoading}
    ''';
  }
}
