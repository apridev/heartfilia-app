import 'package:flutter/material.dart';
import 'package:heartfilia_app/widgets/wishlist_product_tile.dart';

class TestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.abc),
            title: Text('Test'),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
                WishlistProductTile(
                  categories: 'Wardah Wardah Beauty',
                  nameProduct: 'Acnederm Acne Care Serum',
                  images: 'assets/images/product_one.png',
                  price: 18.6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}