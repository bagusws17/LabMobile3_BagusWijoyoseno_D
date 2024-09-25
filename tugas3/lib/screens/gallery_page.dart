import 'package:flutter/material.dart';
import '../widgets/side_menu.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      drawer: SideMenu(),
      body: const Center(
        child: Text('Gallery Page'),
      ),
    );
  }
}
