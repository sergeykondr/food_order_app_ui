import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key key, this.title, this.shopName, this.svgSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Material( //для того, чтобы задать границу обводки блока - и выставляем transparent - прозрачный
        color: Colors.transparent,
        child: InkWell(//клик с эффектом чернил снаружи (граница карточки)
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: Colors.white38),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        //offset: Offset(5, 4),
                        blurRadius: 15,
                        color: Color(0xFFB0CCE1).withOpacity(0.22),
                      )
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent, //тут белый (прозрачный фон внутри карточки)
                    child: InkWell( //клик с эффектом чернил (внутри карточки)
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              padding: EdgeInsets.all(35),
                              decoration: BoxDecoration(
                                color: kPrimaryColor.withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: SvgPicture.asset(svgSrc, height: size.height * 0.05),
                            ),
                            Text(title),
                            SizedBox(height: 10),
                            Text(shopName),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}