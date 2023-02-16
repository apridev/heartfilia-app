import 'package:flutter/material.dart';
import 'package:heartfilia_app/widgets/list_profile_tile.dart';

class ListIconHelpCenterTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/chat-page');
          },
          child: ListProfileTile(
            icons: 'assets/icons/icon_profile_complaint_order.png', 
            nameIcons: 'Complaint order'
          ),
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_help_center.png', 
          nameIcons: 'Heartfillia help center'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_logout_account.png', 
          nameIcons: 'Logout account'
        ),
      ],
    );
  }
}