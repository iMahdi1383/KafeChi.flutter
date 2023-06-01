import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/share/fonts.dart';
import '/screens/home/widgets/coffee_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1015),

      // # نوار بالا
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            // # آیکون منو
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.0, 0.5, 1.0],
                colors: [
                  Color(0x15ffffff),
                  Color(0x10ffffff),
                  Colors.transparent,
                ],
              ),
            ),
            child: SvgPicture.asset(
              'lib/assets/icons/menu.svg',
              color: Colors.white24,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              // # آیکون منو
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.0, 0.5, 1.0],
                  colors: [
                    Color(0x15ffffff),
                    Color(0x10ffffff),
                    Colors.transparent,
                  ],
                ),
              ),
              child: SvgPicture.asset(
                'lib/assets/icons/user.svg',
                color: Colors.white24,
              ),
            ),
          ),
        ],
      ),

      // # نوار پایین
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),

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
              TextField(
                style: Fonts.md,
                decoration: InputDecoration(
                  hintText: "قهوه دلخواه خود را جستجو کنید ...",
                  prefixIcon: SizedBox(
                    width: 50,
                    child: Container(
                      padding: const EdgeInsets.only(right: 15, left: 10),
                      child: SvgPicture.asset(
                        'lib/assets/icons/search.svg',
                        color: Colors.white24,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white10,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // # لیست کارت های محصول
              SizedBox(
                height: 290,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0;
                        i < 5;
                        i++)
                      const CoffeeCard(),

                  ],
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
