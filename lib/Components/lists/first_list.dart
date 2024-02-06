import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/first_row_cards.dart';

import '../../ListItem/list1_item.dart';


class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*0.2,
      // width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: Dummy_List1.map((categoryItem) => FirstRowCards(categoryItem.title, categoryItem.image)).toList(),
      ),
    );
  }
}

