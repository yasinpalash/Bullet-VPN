import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("One VPN"),
        leading: IconButton(
          onPressed: () {

          },
          icon: const Icon(Icons.perm_device_info),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.brightness_2_outlined))
        ],
      ), // AppBar

    );
  }
}
