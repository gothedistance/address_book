import 'package:flutter/material.dart';

class RowAndColumnSample extends StatelessWidget {
  const RowAndColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Strawberry Pavlova"),
                  SizedBox(height: 10),
                  Text(
                      "This layout is organized as a Row. The row contains two children: a column on the left, and an image on the right: This layout is organized as a Row. The row contains two children: a column on the left, and an image on the right:"),
                  SizedBox(height: 10),
                  Row(
                    children: [Text("☆☆☆☆☆"), Text("170 Reviews")],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [Icon(Icons.radar), Text("PREP"), Text("25 min")],
                      ),
                      Column(
                        children: [Icon(Icons.radar), Text("PREP"), Text("25 min")],
                      ),
                      Column(
                        children: [Icon(Icons.radar), Text("PREP"), Text("25 min")],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Image.network(
                "https://docs.flutter.dev/assets/images/docs/ui/layout/pavlova-diagram.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
