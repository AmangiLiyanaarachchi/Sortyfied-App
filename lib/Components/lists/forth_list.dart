import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/first_row_cards.dart';

import '../cards/forth_row_cards.dart';


class ForthRow extends StatelessWidget {
  const ForthRow({
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
            ForthRowCards(),
          ],
        ),
      ),
    );
  }
}

