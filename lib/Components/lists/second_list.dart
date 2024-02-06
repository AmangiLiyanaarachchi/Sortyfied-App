import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/first_row_cards.dart';

import '../cards/second_row_cards.dart';


class SecondRow extends StatelessWidget {
  const SecondRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*0.5,
      // width: double.infinity,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SecondRowCards(),
            SizedBox(width: 10,),
            SecondRowCards(),
            SizedBox(width: 10,),
            SecondRowCards(),
            SizedBox(width: 10,),
            SecondRowCards()
          ],



          // controller:
          //     PageController(initialPage: 0, viewportFraction: 0.7),
        ),
      ),
    );
  }
}

