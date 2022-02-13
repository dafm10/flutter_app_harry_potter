import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/pages/item_list_characters.dart';
import 'package:flutter_app_harry_potter/services/api_service.dart';
import 'package:flutter_app_harry_potter/ui/widget/house_item_list_widget.dart';
import 'package:flutter_app_harry_potter/ui/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  APIService _apiService = APIService();
  String house = "";

  @override
  void initState() {
    // TODO: implement initState
    _apiService.getCharacters(house);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: H1(text: "Houses"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  HousesItemListWidget(
                    image: "gryffindor",
                    onPressed: () {
                      house = "Gryffindor";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (conext) => ItemListCharacters(house: house,)));
                    },
                  ),
                  HousesItemListWidget(
                    image: "slytherin",
                    onPressed: () {
                      house = "Slytherin";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (conext) => ItemListCharacters(house: house)));
                    },
                  ),
                  HousesItemListWidget(
                    image: "hufflepuff",
                    onPressed: () {
                      house = "Hufflepuff";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (conext) => ItemListCharacters(house: house)));
                    },
                  ),
                  HousesItemListWidget(
                    image: "ravenclawCrest",
                    onPressed: () {
                      house = "RavenclawCrest";
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (conext) => ItemListCharacters(house: house)));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
