import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/models/characters_model.dart';
import 'package:flutter_app_harry_potter/pages/character_detail_page.dart';
import 'package:flutter_app_harry_potter/services/api_service.dart';
import 'package:flutter_app_harry_potter/ui/widget/item_characters_widget.dart';
import 'package:flutter_app_harry_potter/ui/widget/text_widget.dart';

class ItemListCharacters extends StatefulWidget {
  String house;

  ItemListCharacters({
    required this.house,
  });

  @override
  _ItemListCharactersState createState() => _ItemListCharactersState();
}

class _ItemListCharactersState extends State<ItemListCharacters> {
  APIService _apiService = APIService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1(text: widget.house),
                FutureBuilder(
                  future: _apiService.getCharacters(widget.house),
                  builder: (BuildContext context, AsyncSnapshot snap) {
                    if (snap.hasData) {
                      List<CharactersModel> listCh = snap.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: listCh.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemCharactersListWidget(
                            image: listCh[index].image!,
                            name: listCh[index].name,
                            ancestry: listCh[index].ancestry,
                            wizard: listCh[index].wizard,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CharacterDetailPage(
                                    actor: listCh[index],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    }
                    return Center(
                      child: const CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
