import 'package:app/components/menu_widget.dart';
import 'package:flutter/material.dart';

import '../responsive/responsive_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      appBar: AppBar(
        title: const Text('Mobile'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 15,
            child: ListTile(
              title: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
