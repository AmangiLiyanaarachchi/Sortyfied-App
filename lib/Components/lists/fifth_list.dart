import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/first_row_cards.dart';

import '../../ListItem/list5_item.dart';
import '../cards/fifth_row_cards.dart';


class FifthRow extends StatelessWidget {
  const FifthRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*0.15,
      // width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
    children: Dummy_List5.map((categoryItem) => FifthRowCards(categoryItem.title, categoryItem.image, categoryItem.subTitle)).toList(),
    ),
    );
  }
}

