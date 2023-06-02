import 'package:flutter/material.dart';

import 'package:kafechi/shared/fonts.dart';

import 'package:kafechi/screens/home/widgets/topbar_widget.dart';
import 'package:kafechi/screens/home/widgets/navbar_widget.dart';
import 'package:kafechi/screens/home/widgets/searchbar_widget.dart';
import 'package:kafechi/screens/home/widgets/product_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFF0C1015),

        // # نوار بالا
        appBar: topbar,

        // # نوار پایین
        bottomNavigationBar: navbar,

        // # محتوای صفحه
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // # عنوان صفحه
                const Text(
                  "شما لایــــــــــق بهترین طعم ها هستید.",
                  style: Fonts.xl,
                ),

                const SizedBox(height: 25),

                // # جستجو
                searchbar,

                const SizedBox(height: 25),

                // # لیست کارت های محصول
                const ProductList(),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
