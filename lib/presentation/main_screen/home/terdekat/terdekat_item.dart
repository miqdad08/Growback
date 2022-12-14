import 'package:flutter/material.dart';
import 'package:growback/model/terdekat_model.dart';

class TerdekatItem extends StatelessWidget {
  final TerdekatModel terdekatModel;

  const TerdekatItem({Key? key, required this.terdekatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              terdekatModel.image,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              terdekatModel.title,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              terdekatModel.jarak,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                Text(
                  terdekatModel.rating,
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
