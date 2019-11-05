import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/topics.dart';

class TopicItemWidget extends StatelessWidget {
  final TopicItem topicItem;
  TopicItemWidget(this.topicItem);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {},
          child: FadeInImage(
            placeholder: AssetImage('assets/images/product-placeholder.png'),
            image: NetworkImage(topicItem.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Topics>(
            builder: (ctx, product, _) => IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          ),
          title: Text(
            topicItem.name,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
