import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showHomeIcon;
  final VoidCallback? onHomeIconPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showHomeIcon = false,
    this.onHomeIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        if (showHomeIcon)
          IconButton(
            icon: const Icon(Icons.home_rounded, size: 30.0),
            // icon: Image.asset(
            //   'assets/icons/home.png',
            //   width: 32,
            //   height: 32,
            // ),
            onPressed: onHomeIconPressed,
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
