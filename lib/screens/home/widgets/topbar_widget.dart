import "package:flutter/material.dart";
import "package:get/route_manager.dart";

import "package:kafechi/shared/icons.dart";
import "package:kafechi/shared/ak_widgets/ak_iconbutton.dart";

AppBar topbar = AppBar(
  toolbarHeight: 60,
  elevation: 0,
  backgroundColor: Colors.transparent,
  leading: Container(
    margin: const EdgeInsets.only(right: 20, top: 25),
    // # آیکون منو
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => {},
      child: AkIconButton(icon: IconPaths.menu),
    ),
  ),
  actions: [
    Container(
      margin: const EdgeInsets.only(left: 20, top: 25),
      // # آیکون کاربر
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => Get.toNamed("/login"),
        child: AkIconButton(icon: IconPaths.user),
      ),
    ),
  ],
);
