import 'package:growback/model/food_model.dart';

class FoodModel {
  String imageUrls;

  FoodModel({
    required this.imageUrls,
  });
}

final List<FoodModel> imageSliderList = [
  FoodModel(
    imageUrls:
        "https://asset.kompas.com/crops/fP_Q5TD9BOn5G5JTnntgtDIjQMI=/53x36:933x623/750x500/data/photo/2021/10/21/6171492e1ea12.jpg",
  ),
  FoodModel(
    imageUrls:
        "https://www.teakpalace.com/image/cache/catalog/artikel/gambar-makanan-paling-enak-sate-kambing-1000x750h.jpg",
  ),
  FoodModel(
    imageUrls:
        "https://www.piknikdong.com/wp-content/uploads/2021/11/Resep-Ayam-Geprek-Bensu-min.jpg",
  ),
];
