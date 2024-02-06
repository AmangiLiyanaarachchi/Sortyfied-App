import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/first_row_cards.dart';

import '../cards/forth_row_cards.dart';
import '../cards/sixth_row_cards.dart';


class SixthRow extends StatelessWidget {
  const SixthRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*0.23,
      // width: double.infinity,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SixthRowCards(),
            SizedBox(width: 10,),
            SixthRowCards(),
            SizedBox(width: 10,),
            SixthRowCards(),
            SizedBox(width: 10,),
            SixthRowCards(),
            SizedBox(width: 10,),
            SixthRowCards(),
            SizedBox(width: 10,),
            SixthRowCards(),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}

