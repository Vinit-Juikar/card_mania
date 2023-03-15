import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({
    required this.img,
    required this.name,
    super.key,
  });
  String img;
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 240,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(192, 197, 254, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.new_label),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.new_label),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.new_label),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
