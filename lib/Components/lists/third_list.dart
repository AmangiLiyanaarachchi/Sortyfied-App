import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/first_row_cards.dart';
import 'package:sortifyd_app/ListItem/list3_item.dart';

import '../cards/second_row_cards.dart';
import '../cards/third_row_cards.dart';


class ThirdRow extends StatelessWidget {
  const ThirdRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: GridView(
        children: Dummy_List3.map((categoryItem) => ThirdRowCards(categoryItem.title, categoryItem.image)).toList(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
      ),
    );
  }
}

