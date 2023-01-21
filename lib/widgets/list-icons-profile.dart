import 'package:flutter/material.dart';
import 'package:heartfilia_app/widgets/list_profile_tile.dart';

class ListIconsTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListProfileTile(
          icons: 'assets/icons/icon_profile_list_order.png', 
          nameIcons: 'List Order'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_wishlist_product.png', 
          nameIcons: 'Wishlist Product'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_reviews.png', 
          nameIcons: 'Reviews'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_categories.png', 
          nameIcons: 'Categories'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_transaction.png', 
          nameIcons: 'Transactions'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_my_address.png', 
          nameIcons: 'My Address'
        ),
        ListProfileTile(
          icons: 'assets/icons/icon_profile_voucers.png', 
          nameIcons: 'Vouchers'
        ),
      ],
    );
  }
}