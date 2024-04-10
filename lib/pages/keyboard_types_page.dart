import 'package:flutter/material.dart';

class KeyboardTypesPages extends StatelessWidget {
  const KeyboardTypesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00c853),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          const TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text("Email"),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text("Phone"),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.numberWithOptions(
              signed: true,
              decimal: true,
            ),
            decoration: InputDecoration(
              label: Text("Price"),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              label: Text("Name"),
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => print("🦖"),
          ),
        ],
      ),
    );
  }
}
