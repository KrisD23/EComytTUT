import 'package:e_comm_yt/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart ';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
