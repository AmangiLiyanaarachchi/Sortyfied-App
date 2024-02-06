import 'package:flutter/material.dart';
import 'package:sortifyd_app/models/item_subsection_model.dart';

class SubsectionDataProvider with ChangeNotifier {
  List<SubsectionData> subsectionDataList = [];

  Future<void> fetchSubsectionData() async {
    // Implement the backend API call to fetch the item count for each subsection
    // and update the subsectionDataList accordingly.

    subsectionDataList = [
      SubsectionData(subsection: 'Airline', itemCount: 10),
      SubsectionData(subsection: 'Hotel', itemCount: 5),
      SubsectionData(subsection: 'Car Rental', itemCount: 8),
      SubsectionData(subsection: 'Railway', itemCount: 15),
      SubsectionData(subsection: 'Other', itemCount: 3),
    ];
    notifyListeners();
  }
}
