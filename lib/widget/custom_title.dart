import 'package:skype_app/utilize/universal_variable.dart';

import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget icon;
  final Widget subtitle;
  final Widget trailing;
  final EdgeInsets margin;
  final bool mini;
  final GestureTapCallback onTap;
  final GestureLongPressCallback onLongPress;

  CustomTile({
    @required this.leading,
    @required this.title,
    this.icon,
    @required this.subtitle,
    this.trailing,
    this.margin = const EdgeInsets.all(0),
    this.onTap,
    this.onLongPress,
    this.mini = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mini ? 10 : 0),
        margin: margin,
        child: Row(
          children: [
            leading,
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(left: mini ? 10 : 15),
                    padding: EdgeInsets.symmetric(vertical: mini ? 3 : 20),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: UniversalVariables.sepratorColor,
                                width: 1))),
                                child: Row(children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      title,SizedBox(height: 5),
                                      Row(
                                        children: [
                                          icon ?? Container(),
                                          subtitle,
                                        ],
                                      )
                                    ],)
                                ],),
                                ))
          ],
        ),
      ),
    );
  }
}
