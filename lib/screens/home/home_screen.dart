import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

import "package:kafechi/shared/fonts.dart";
import "package:kafechi/shared/colors.dart";
import "package:kafechi/shared/icons.dart";

import "package:kafechi/screens/home/widgets/topbar_widget.dart";
import "package:kafechi/screens/home/widgets/navbar_widget.dart";
import "package:kafechi/screens/home/widgets/product_list_widget.dart";
import "package:kafechi/shared/ak_widgets/ak_textfield.dart";

class HomeScreen extends StatelessWidget {
  final userDetails = FirebaseAuth.instance.currentUser;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorPalette.background,

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
                Text(
                  "${userDetails?.email} خوش آمدید!",
                  style: Fonts.xl,
                ),

                const SizedBox(height: 25),

                // # جستجو
                AkTextField(
                  placeholder: " جستجوی موبایل دلخواه شما ...",
                  icon: IconPaths.search,
                ),

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
