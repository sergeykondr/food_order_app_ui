import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.3),
          ),
        ],
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: SvgPicture.asset('assets/icons/home.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('assets/icons/Following.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('assets/icons/Glyph.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('assets/icons/person.svg'), onPressed: (){}),
        ],
      ),
    );
  }
}

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
    title: Align(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
          //text: 'Punk',
          children: [
            TextSpan(text: 'Punk', style: TextStyle(color: ksecondaryColor)),
            TextSpan(text: 'Food', style: TextStyle(color: kPrimaryColor))
          ],
        ),
      ),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icons/notification.svg'),
        onPressed: () {},
      )
    ],
  );
}
