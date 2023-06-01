import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/share/fonts.dart';

class CoffeeCard extends StatelessWidget {

  const CoffeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          Get.toNamed("/product");
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          width: 180,
          height: 100,
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
              // # عکس کارت
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
                    child: Image.asset(
                      'image',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // # متن کارت
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'name',
                  style: Fonts.lg,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'detail',
                  style: Fonts.sm,
                ),
              ),

              const SizedBox(height: 10),

              // # قیمت
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      'price',
                      style: Fonts.md,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffd27842),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(Icons.add),
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
