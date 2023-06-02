import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:kafechi/provider/product_provider.dart';
import 'package:kafechi/screens/home/widgets/coffee_card_widget.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductProvider>(context, listen: false)
          .getProductsFromProvider();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 290,
        child: Consumer<ProductProvider>(
          builder: (context, value, child) {
            // # لودینگ
            if (value.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final products = value.products;
            return SizedBox(
              height: 290,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < products.length; i++) CoffeeCard(product: products[i]),
                ],
              ),
            );
          },
        ));
  }
}







    // return SizedBox(
    //   height: 290,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [
    //       for (int i = 0; i < 5; i++) const CoffeeCard(),
    //     ],
    //   ),
    // );
