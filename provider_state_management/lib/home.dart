import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/fav_words.dart';
import 'package:provider_state_management/favourite.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final helper = Provider.of<Favourite>(context);
    final words = nouns.take(50).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Favourite Items using Provider"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: words.length,
            itemBuilder: (context, i) {
              final word = words[i];
              return ListTile(
                title: Text(
                  word,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: helper.isExist(word)
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(Icons.favorite_border_outlined),
                  onPressed: () {
                    helper.favourite(word);
                  },
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Favourite_words()));
          },
          label: Text("Favourites")),
    );
  }
}
