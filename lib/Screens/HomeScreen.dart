import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/home_controller.dart';
import 'package:travel_app/widgets/appbar.dart';
import 'package:travel_app/widgets/background.dart';
import 'package:travel_app/widgets/post_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  static const String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: homeAppBar(),
      body: Stack(
        children: [
          headerBackground(height, width),
          postList(width, height),
        ],
      ),
    );
  }
}
