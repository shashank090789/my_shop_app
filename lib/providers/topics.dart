import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class TopicItem {
  final String id;
  final String imageUrl;
  final String name;
  TopicItem({
    @required this.id,
    @required this.imageUrl,
    @required this.name,
  });
}

class Topics with ChangeNotifier {
  List<TopicItem> _items = [];

  List<TopicItem> get items {
    return [..._items];
  }

  Future<void> fetchTopics() async {
    const url = 'https://core-java-flash-7d332.firebaseio.com/data/topics.json';
    final List<TopicItem> loadedTopics = [];
    final response = await http.get(url);
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    extractedData.forEach((topicId, topicData) {
      loadedTopics.add(TopicItem(
        id: topicData['id'],
        imageUrl: topicData['imageUrl'],
        name: topicData['name'],
      ));
    });

    _items = loadedTopics;
     notifyListeners();
  }
}
