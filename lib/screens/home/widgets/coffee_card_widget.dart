import "package:flutter/material.dart";
import "package:get/route_manager.dart";

import "package:kafechi/shared/fonts.dart";
import "package:kafechi/shared/colors.dart";
import "package:kafechi/model/products_model.dart";

class CoffeeCard extends StatelessWidget {
  final Product product;
  const CoffeeCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Get.toNamed("/product", arguments: product);
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          width: 230,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.0, 0.5, 1.0],
              colors: [
                Color(0x15ffffff),
                Color(0x10ffffff),
                Colors.transparent,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      color: Colors.black87,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FractionallySizedBox(
                    widthFactor: 1.0,
                    child: Image.network(
                      product.thumb, // # عکس کارت
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // # متن کارت
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  product.name, // # نام محصول
                  style: Fonts.lg,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "${product.description.substring(0, 25)} ...",
                  style: Fonts.sm,
                ),
              ),

              const SizedBox(height: 10),

              // # قیمت
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "${product.price.toString()} تومان",
                      style: Fonts.md,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorPalette.accent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: const [
                        Icon(Icons.add),
                        SizedBox(width: 5),
                        Text("خرید", style: Fonts.md)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
