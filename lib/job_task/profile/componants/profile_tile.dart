import 'package:flutter/material.dart';

import 'tile_des.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TileDes(
          icon: Icons.supervised_user_circle_outlined,
          text: 'Profile',
          isHome: false,
        ),
        SizedBox(height: 30),
        TileDes(
          icon: Icons.history,
          text: 'History',
          isHome: false,
        ),
        SizedBox(height: 30),
        TileDes(
          icon: Icons.notifications_off_outlined,
          text: 'Mute Notification',
          isHome: false,
        ),
        SizedBox(height: 30),
        TileDes(
          icon: Icons.settings,
          text: 'Settings',
          isHome: false,
        ),
        SizedBox(height: 30),
        TileDes(
          icon: Icons.question_answer_outlined,
          text: 'F&Q',
          isHome: false,
        ),
        SizedBox(height: 30),
        TileDes(
          icon: Icons.support_agent,
          text: 'Support',
          isHome: false,
        ),
      ],
    );
  }
}
