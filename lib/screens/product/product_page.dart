import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kafechi/share/fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      // # نوار بالا
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
        ),
        title: const Text(
          "قهوه لاته",
          style: Fonts.lg,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
        child: Column(
          children: [
            // # عکس محصول
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('lib/assets/images/latte.jpg'),
            ),

            const SizedBox(height: 20),

            // # عنوان محصول
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "قهوه لاته",
                style: Fonts.xl,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "با شیر طبیعی",
                style: Fonts.md,
              ),
            ),

            const SizedBox(height: 20),

            // # نوار قیمت
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // # قیمت
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "45,000 تومان",
                    style: Fonts.lg,
                  ),
                ),

                const SizedBox(width: 10),

                // # دکمه افزودن به سبد خرید
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.brown[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: const Text(
                      "افزودن به صفحه خرید",
                      style: Fonts.md,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
