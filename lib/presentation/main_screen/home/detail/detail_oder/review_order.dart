import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:growback/presentation/main_screen/main_screen.dart';
import 'package:growback/utils/app_color.dart';
import 'package:growback/utils/textstyle.dart';

class ReviewOrder extends StatefulWidget {
  const ReviewOrder({Key? key}) : super(key: key);

  @override
  State<ReviewOrder> createState() => _ReviewOrderState();
}

class _ReviewOrderState extends State<ReviewOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundConfirm,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff26315F),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Pesanan Kamu",
            style: TextStyle(color: Color(0xff26315F))),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          children: [
            Center(
              child: Text("Review Orderan kamu dong", style: headTextReview,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Review Order",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Jangan lupa nilai orderannya yaa", style: headTextReview),
            ),
            SizedBox(height: 20,),
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen(text: "text")));
        },
        child: Container(
          height: 40,
          color: AppColor.secondary,
          child: Center(child: Text("Selesai", style: button ,)),
        ),
      ),
    );
  }
}
