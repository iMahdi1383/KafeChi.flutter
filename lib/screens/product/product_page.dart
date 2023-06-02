import "package:flutter/material.dart";
import "package:get/route_manager.dart";

import "package:kafechi/model/products_model.dart";
import "package:kafechi/shared/ak_widgets/ak_button.dart";
import "package:kafechi/shared/fonts.dart";
import "package:kafechi/shared/colors.dart";
import "package:kafechi/shared/icons.dart";

class ProductPage extends StatelessWidget {
  final Product product = Get.arguments;

  ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ColorPalette.background,
        // # نوار بالا
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black38,
          leading: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_rounded)),
          ),
          title: Text(
            "مشخصات و خرید ${product.name}",
            style: Fonts.lg,
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              children: [
                // # عکس محصول
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    product.thumb,
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 30),

                // # عنوان محصول
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    product.name,
                    style: Fonts.xl,
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    product.description,
                    style: Fonts.md,
                  ),
                ),

                const SizedBox(height: 30),

                // # قیمت
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    "${product.price.toString()} تومان",
                    style: Fonts.lg,
                  ),
                ),

                const SizedBox(height: 10),

                // # دکمه افزودن به سبد خرید
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Get.back();
                  },
                  child: const AkButton(text: "افزودن به سبد خرید",)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
