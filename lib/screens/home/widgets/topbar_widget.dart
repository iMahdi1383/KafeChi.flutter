import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:kafechi/shared/appbar_button_widget.dart';

AppBar topbar = AppBar(
  toolbarHeight: 60,
  elevation: 0,
  backgroundColor: Colors.transparent,
  leading: Container(
    margin: const EdgeInsets.only(right: 20, top: 25),
    // # آیکون منو
      child: InkWell(
        onTap: () => {},
        child: const AppbarButton(icon: 'lib/assets/icons/menu.svg'),
      ),
  ),
  actions: [
    Container(
      margin: const EdgeInsets.only(left: 20, top: 25),
      // # آیکون کاربر
      child: InkWell(
        onTap: () => Get.toNamed("/login"),
        child: const AppbarButton(icon: 'lib/assets/icons/user.svg'),
      ),
    ),
  ],
);
