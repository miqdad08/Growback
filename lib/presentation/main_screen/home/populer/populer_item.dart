import 'package:flutter/material.dart';
import 'package:growback/model/populer_model.dart';

class PopulerItem extends StatelessWidget {
  final PopulerModel populerModel;

  const PopulerItem({Key? key, required this.populerModel, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              populerModel.image,
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
              populerModel.title,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              populerModel.jarak,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                Text(
                  populerModel.rating,
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
