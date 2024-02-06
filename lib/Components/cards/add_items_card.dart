import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/add_items_screen.dart';
import 'package:sortifyd_app/Screens/view_items_screen.dart';
import 'package:sortifyd_app/providers/item_subsection_provider.dart';

class AddItemsCard extends StatelessWidget {
  final IconData headerIcon;
  final String headerText;
  final List<String> subsections;
  final int itemCount;
  final Color iconColor;
  final String currentScreen;

  const AddItemsCard({
    Key? key,
    required this.headerIcon,
    required this.headerText,
    required this.subsections,
    required this.itemCount,
    required this.iconColor,
    required this.currentScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subsectionDataProvider = Provider.of<SubsectionDataProvider>(context);
    final subsectionDataList = subsectionDataProvider.subsectionDataList;
    final hasSubsections = subsections.isNotEmpty;
    // final isClickable = !hasSubsections || itemCount == 0;
    final isClickable = !hasSubsections;

    return Card(
      color: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, side: BorderSide.none),
      child: InkWell(
        onTap: () {
          if (isClickable) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewItemsScreen(
                  title: headerText,
                  previousScreen: currentScreen,
                ),
              ),
            );
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: iconColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(
                      headerIcon,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      headerText,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (!hasSubsections) ...[
                    Text(
                      itemCount.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                  if (isClickable && !hasSubsections) ...[
                    InkWell(
                      onTap: () {
                        // Implement the action when the plus icon is clicked.
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => AddItemsScreen(
                        //       title: headerText,
                        //     ),
                        //   ),
                        // );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle_outline,
                          size: 28,
                          color: kprimaryColor,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (hasSubsections) ...[
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: subsections.length,
                separatorBuilder: (context, index) => const Divider(height: 0),
                itemBuilder: (context, index) {
                  final subsection = subsections[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewItemsScreen(
                            title: subsection,
                            previousScreen: currentScreen,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(subsection),
                          Row(
                            children: [
                              const Text(
                                '0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  // Implement the action when the plus icon is clicked.
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => AddItemsScreen(
                                  //       title: subsection,
                                  //     ),
                                  //   ),
                                  // );
                                },
                                child: const Icon(
                                  Icons.add_circle_outline,
                                  size: 28,
                                  color: kprimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
