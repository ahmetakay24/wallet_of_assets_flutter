import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/news/view_model/news_view_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    final newsModelView = NewsModelView();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(fontSize: 30, color: VarlikYonetimiColors().goldColors),
        ),
        centerTitle: true,
      ),
      body: Center(child: NewsScreenListView(newsModelView: newsModelView)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newsModelView.getNews();
        },
      ),
    );
  }
}

class NewsScreenListView extends StatelessWidget {
  const NewsScreenListView({
    super.key,
    required this.newsModelView,
  });

  final NewsModelView newsModelView;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsModelView.news.length,
      itemBuilder: (context, index) {
        return Observer(builder: (_) {
          return ListTile(
            title: Text(newsModelView.news[index].title ?? "Ahmet"),
          );
        });
      },
    );
  }
}
