import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/categories_tile.dart';
import 'package:heartfilia_app/widgets/flash_sale_product_tile.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';
import 'package:heartfilia_app/widgets/popular_product.dart';
import 'package:heartfilia_app/widgets/recommendation_product_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget headerNav() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 30, left: 20, right: 20),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Image.asset(
    //           'assets/images/heartfilia_home.png',
    //           width: MediaQuery.of(context).size.width * 0.25,
    //         ),
    //         Row(
    //           children: [
    //             IconButton(
    //                 onPressed: () {},
    //                 icon: Image.asset(
    //                   'assets/icons/icon_cart.png',
    //                   width: 24,
    //                 )),
    //             IconButton(
    //                 onPressed: () {},
    //                 icon: Image.asset(
    //                   'assets/icons/icon_hamburger.png',
    //                   width: 24,
    //                 )),
    //           ],
    //         ),
    //       ],
    //     ),
    //   );
    // }

    Widget searchproduct() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    textInputAction: TextInputAction.search,
                    cursorColor: pinkOne,
                    style: TextStyle(color: blackColor),
                    // obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(color: pinkOne)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(color: grayTwo)),
                        // prefixIcon: Icon(Icons.person),
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.search)],
                        ),
                        hintText: "I???m looking for...",
                        hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
                  )),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              'assets/icons/icon_hamburger_filter.png',
              width: MediaQuery.of(context).size.width * 0.12,
            )
          ],
        ),
      );
    }

    Widget imageSlader() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: 20,
            right: 20),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset('assets/images/image_slader.png')),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 15),
                width: 8,
                height: 8,
                decoration:
                    BoxDecoration(color: pinkOne, shape: BoxShape.circle),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: defaultMargin, right: 2),
            child: Row(
              children: [
                CategoriesTile(nameCategories: 'All', type: pinkOneStyle, weight: semiBold,),
                CategoriesTile(
                    nameCategories: 'On Sale', type: grayOneColorStyle, weight: medium,),
                CategoriesTile(
                    nameCategories: 'Popular', type: grayOneColorStyle, weight: medium,),
                CategoriesTile(
                    nameCategories: 'New arrivals', type: grayOneColorStyle, weight: medium,),
                CategoriesTile(
                    nameCategories: 'Package', type: grayOneColorStyle, weight: medium,),
                CategoriesTile(
                    nameCategories: 'Health', type: grayOneColorStyle, weight: medium,),
              ],
            ),
          ),
        ),
      );
    }

    Widget flashSale() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: defaultMargin,
            right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text('Flash Sale',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold)),
                  SizedBox(
                    width: 12,
                  ),

                  //todo Flash Sale don't Otomatis
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: pinkOne),
                    child: Text(
                      '12',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: pinkOne),
                    child: Text(
                      '04',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: pinkOne),
                    child: Text(
                      '59',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'See all',
              style: secondaryBlackStyle.copyWith(
                  fontSize: 14, fontWeight: semiBold),
            )
          ],
        ),
      );
    }

    Widget productSale() {
      return ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 2),
            child: Row(
              children: [
                FlashSaleProductTile(
                    images: 'assets/images/product_one.png',
                    categories: 'Wardah Beauty',
                    nameProduct: 'Acnederm Acne Care Serum',
                    priceBefore: '\$4.14',
                    priceAfter: '\$3.74',
                    stock: 100,
                    qty: '29'),
                FlashSaleProductTile(
                    images: 'assets/images/product_two.png',
                    categories: 'Scarlett',
                    nameProduct: 'Brightening Fragrance Body Lotion',
                    priceBefore: '\$5.52',
                    priceAfter: '\$3.93',
                    stock: 50,
                    qty: '14'),
                FlashSaleProductTile(
                    images: 'assets/images/product_three.png',
                    categories: 'Ponds',
                    nameProduct: 'Bright Beauty Facial Foam',
                    priceBefore: '\$4.16',
                    priceAfter: '\$3.41',
                    stock: 120,
                    qty: '40'),
              ],
            ),
          ),
        ),
      );
    }

    Widget Populartitle() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            left: defaultMargin,
            right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text('Popular Product',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold)),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
            Text(
              'See all',
              style: secondaryBlackStyle.copyWith(
                  fontSize: 14, fontWeight: semiBold),
            )
          ],
        ),
      );
    }

    Widget popularProduct() {
      return ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(
                left: defaultMargin
              ),
              child: Row(
                children: [
                  PopularProductTile(
                      images: 'assets/images/product_three.png',
                      categories: 'Ponds',
                      nameProduct: 'Bright Beauty Facial Foam',
                      price: '\$4.14'),
                  PopularProductTile(
                      images: 'assets/images/product_four.png',
                      categories: 'Ponds',
                      nameProduct: 'UV Shield Essential Sunscreen',
                      price: '\$2.41'),
                  PopularProductTile(
                      images: 'assets/images/product_five.png',
                      categories: 'Wardah Beauty',
                      nameProduct:
                          'Wardah Crystal Secret Bright Activating Night Cream',
                      price: '\$6.52'),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget recommendationtitle() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            left: defaultMargin,
            right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text('Recommendation',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold)),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget recommendationProduct() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
            ),
            child: Row(
              children: [
                RecommendationProductTile(
                    images: 'assets/images/product_six.png',
                    categories: 'Wardah Beauty',
                    nameProduct: 'Crtstal Secret Brightening Day Cream'),
                RecommendationProductTile(
                    images: 'assets/images/product_seven.png',
                    categories: 'Wardah Beauty',
                    nameProduct: 'UV Shield Aqua Fresh E...'),
                RecommendationProductTile(
                    images: 'assets/images/product_three.png',
                    categories: 'Ponds',
                    nameProduct: 'Bright Beauty Facial Foam'),
                RecommendationProductTile(
                    images: 'assets/images/product_eight.png',
                    categories: 'Wardah Beauty',
                    nameProduct: 'CRYSTAL SECRET PURE TR...'),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Image.asset(
                'assets/images/heartfilia_home.png',
                width: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/icon_cart.png',
                  width: 24,
                )),
          ],
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      endDrawer: Drawer(
        child: ScrollConfiguration(
          behavior: ScrollBehavior().copyWith(overscroll: false),
          child: ListView(
            padding: EdgeInsets.all(0),
            children: 
              [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: double.infinity,
                    decoration: BoxDecoration(color: pinkOne),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/img_profile.png',
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rayna Lipshutz',
                          style: backgroundColorStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/icon_profile_profile_edit.png',
                              width: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/icons/icon_profile_profile_setting.png',
                              width: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: defaultMargin, right: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'My Activity',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_list_order.png', 
                          nameProfile: 'List Order'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_wishlist_product.png', 
                          nameProfile: 'Wishlist Product'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_reviews.png', 
                          nameProfile: 'Reviews'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_categories.png', 
                          nameProfile: 'Categories'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_transaction.png', 
                          nameProfile: 'Transaction'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_my_address.png', 
                          nameProfile: 'My Address'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_voucers.png', 
                          nameProfile: 'Vouchers'
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Help Center',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_complaint_order.png', 
                          nameProfile: 'Complaint Order'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_help_center.png', 
                          nameProfile: 'Heartfilia Help Center'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_logout_account.png', 
                          nameProfile: 'Logout Account'
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: RefreshIndicator(
            color: pinkOne,
            onRefresh: _refresh,
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    searchproduct(),
                    imageSlader(),
                    categories(),
                    flashSale(),
                    productSale(),
                    Populartitle(),
                    popularProduct(),
                    recommendationtitle(),
                    recommendationProduct(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(
      Duration(seconds: 2)
    );
  }
}
