import 'package:flutter/material.dart';
import 'package:opinionleader/news/newsData.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NewsListState();
  }
}

class NewsListState extends State<NewsList> {
  List<NewsData> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
            children: _buildList(),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => _loadNews(),
      ),
    );
  }

  _loadNews() async {
    final response = await http.get('https://clck.ru/NqvvE');
    if (response.statusCode == 200) {
      print(response.body);
      var allData = (json.decode(response.body) as Map)['data']
        as Map<String, dynamic>;
      var newsList =  List<NewsData>();
      allData.forEach((String key, dynamic val) {
        var record = NewsData(
            name: val['name'],
            symbol: val['symbol'],
            price: val['price']);
        newsList.add(record);
      });
      setState(() {
        data = newsList;
      });
    }
  }

  List<Widget> _buildList() {
    return data.map((NewsData f) =>
        ListTile(
          title: Text(f.symbol),
          subtitle: Text(f.name),
          leading: CircleAvatar(child: Text(f.price.toString())),
        )).toList();
  }
}