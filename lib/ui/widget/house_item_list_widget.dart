
import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/ui/responsive/responsive.dart';

class HousesItemListWidget extends StatelessWidget {

  String image;
  Function onPressed;

  HousesItemListWidget({
    required this.image,
    required this.onPressed,
});

  @override
  Widget build(BuildContext context) {

    ResponsiveUI responsive = ResponsiveUI(context);

    return GestureDetector(
      onTap: (){
        onPressed();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        width: responsive.wp(60),
        height: responsive.hp(35),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 12.0,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset(
                "assets/images/$image.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
