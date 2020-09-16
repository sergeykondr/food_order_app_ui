import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Search(
            onChanged: (value) {},
          ),
          menu(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }

  SingleChildScrollView menu() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuItem(
            title: 'Combo Meal',
            isActive: true,
            press: () {},
          ),
          MenuItem(
            title: 'Chiken',
            press: () {},
          ),
          MenuItem(
            title: 'Beverages',
            press: () {},
          ),
          MenuItem(
            title: 'Snacks',
            press: () {},
          ),
          MenuItem(
            title: 'Fish',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Offers & Discounts',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            width: double.infinity,
            height: 160,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/beyond-meat-mcdonalds.png'),
                    fit: BoxFit.fill)),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF961F).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7)
                  ],
                ),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: SvgPicture.asset('assets/icons/macdonalds.svg')),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Get Dixount of\n",
                              style: TextStyle(fontSize: 16)),
                          TextSpan(
                              text: '30% \n',
                              style: TextStyle(
                                  fontSize: 55, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "at MacDonalds on your...",
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final bool isActive;
  final String title;
  final Function press;

  const MenuItem({
    this.title,
    Key key,
    this.isActive = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                color: kTextColor,
                fontWeight: this.isActive ? FontWeight.bold : null),
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.symmetric(vertical: 7),
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const Search({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      decoration: BoxDecoration(
        border: Border.all(color: ksecondaryColor.withOpacity(0.7)),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: 'Search Here',
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
