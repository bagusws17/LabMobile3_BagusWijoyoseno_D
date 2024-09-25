import 'package:flutter/material.dart';
import '../widgets/side_menu.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      drawer: SideMenu(),
      body: const Center(
        child: Text('Favorite Page'),
      ),
    );
  }
}
