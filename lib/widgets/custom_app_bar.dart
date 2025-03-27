import 'package:flutter/material.dart';

import 'notification_icon.dart';
import 'profile_avatar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final Widget? leadingWidget;
  final List<Widget>? actionWidgets;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leadingWidget,
    this.actionWidgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(title,
          style: const TextStyle(color: Colors.black, fontSize: 24)),
      leading: leadingWidget!= null
          ? Padding(
        padding: EdgeInsets.all(8.0),
        child: ProfileAvatar(),
      )
      : null,
      actions: actionWidgets,

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}