import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafechi/shared/fonts.dart';

TextField searchbar = TextField(
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                  ),
                );