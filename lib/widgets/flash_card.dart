import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Text("AH"),
            ),
            title: Text('One-line with leading widget and very long text'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.more_vert),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "For this reason, a one-line ListTile allows the height of leading and trailing widgets to be constrained by the height of the ListTile. This allows for the creation of tappable leading and trailing widgets that are large enough, but it is up to the developer to ensure that their widgets follow the Material spec"),
          ),
        ],
      ),
    );
  }
}
