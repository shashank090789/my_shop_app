import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/topic_item_widget.dart';
import 'package:provider/provider.dart';
import '../providers/topics.dart';

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topics = Provider.of<Topics>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics'),
      ),
      body: Container(
          child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: topics.items.length,
        itemBuilder: (ctx, i) => TopicItemWidget(
          topics.items[i],
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      )),
    );
  }
}
