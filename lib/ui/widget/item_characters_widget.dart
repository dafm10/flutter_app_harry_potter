import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/ui/responsive/responsive.dart';
import 'package:flutter_app_harry_potter/ui/widget/text_widget.dart';

class ItemCharactersListWidget extends StatelessWidget {

  String image;
  String name;
  bool wizard;
  String ancestry;
  Function onTap;

  ItemCharactersListWidget({
    required this.image,
    required this.name,
    required this.ancestry,
    required this.wizard,
    required this.onTap,
});

  @override
  Widget build(BuildContext context) {

    final ResponsiveUI responsive = ResponsiveUI(context);

    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        height: responsive.hp(45),
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              image,
            ),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment(0, 0.2),
                  colors: [
                    Color(0xff222224),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 10.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H3(text: name),
                    H4(text: wizard ? "Wizard" : "Not Wizard"),
                    H4(text: ancestry),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
