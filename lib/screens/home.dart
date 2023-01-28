import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40, 20.0, 20.0),
        child: Column(
          children: [
            Row(
              children: const [Icon(Icons.ad_units)],
            )
          ],
        ),
      ),
    );
  }
}
