import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/news/view_model/news_view_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final newsModelView = NewsModelView();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newsModelView.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(fontSize: 30, color: VarlikYonetimiColors().goldColors),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Observer(builder: (_) {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 10),
            itemCount: newsModelView.news.length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                    height: DeviceSize(context).height * 0.6,
                    width: DeviceSize(context).width,
                    decoration: BoxDecoration(
                      color: VarlikYonetimiColors().goldColors,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(
                              flex: 40,
                              child: Image.network(
                                newsModelView.news[index].banner_image ??
                                    "https://www.globalexecutiveevents.com/assets/news/xl_5ffcd4e2e5.jpg",
                                errorBuilder: (context, error, stackTrace) => Image.network(
                                    "https://www.globalexecutiveevents.com/assets/news/xl_5ffcd4e2e5.jpg"),
                              )),
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(flex: 10, child: AutoSizeText(newsModelView.news[index].title ?? "")),
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(flex: 25, child: AutoSizeText(newsModelView.news[index].summary ?? "")),
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(
                            flex: 10,
                            child: Row(
                              children: [
                                const AutoSizeText("For More:"),
                                TextButton(
                                    onPressed: () {},
                                    child: const AutoSizeText(
                                      "Click",
                                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                                    ))
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 5,
                          ),
                          Expanded(
                              flex: 10,
                              child: AutoSizeText(parseDateTime(newsModelView.news[index].time_published ?? ""))),
                          const Spacer(
                            flex: 5,
                          )
                        ],
                      ),
                    )),
              );
            },
          );
        }),
      )),
    );
  }
}

//"https://www.globalexecutiveevents.com/assets/news/xl_5ffcd4e2e5.jpg"