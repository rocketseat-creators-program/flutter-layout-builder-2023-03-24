import 'package:app/components/menu_widget.dart';
import 'package:app/responsive/responsive_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: MenuWidget(),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 15,
                  child: ListTile(
                    title: Text('Item $index'),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 200,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
