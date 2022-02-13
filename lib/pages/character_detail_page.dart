import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/models/characters_model.dart';
import 'package:flutter_app_harry_potter/ui/responsive/responsive.dart';
import 'package:flutter_app_harry_potter/ui/widget/text_widget.dart';

class CharacterDetailPage extends StatelessWidget {

  CharactersModel actor;

  CharacterDetailPage({
    required this.actor,
});

  @override
  Widget build(BuildContext context) {
    final ResponsiveUI responsive = ResponsiveUI(context);

    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 250,
            floating: false,
            snap: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  actor.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    actor.image != "" ? actor.image.toString() : "https://http2.mlstatic.com/D_NQ_NP_955790-MLM27461540758_052018-O.jpg",
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x0018162E),
                          Color(0xff27272b),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Actor"),
                          ),
                          H3(text: ":  ${actor.actor}"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Date Birth"),
                          ),
                          H3(text: ":  ${actor.dateOfBirth}"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "House"),
                          ),
                          H3(text: ":  ${actor.house}"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Patronus"),
                          ),
                          H3(text: ":  ${actor.patronus}"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Ancestry"),
                          ),
                          H3(text: ":  ${actor.ancestry}"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Wizard"),
                          ),
                          actor.wizard ? H3(text: ":  Si"): H3(text: ":  No"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Eye colour"),
                          ),
                          H3(text: ":  ${actor.eyeColour}"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: H3(text: "Hair colour"),
                          ),
                          H3(text: ":  ${actor.hairColour}"),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
